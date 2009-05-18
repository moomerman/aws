module AWS
  module Base
    
    def aws_request(host, params)
      
      params.merge!(
        :AWSAccessKeyId => @access_key_id,
        :SignatureVersion => 2,
        :SignatureMethod => 'HmacSHA1',
        :Timestamp => Time.now.getutc.iso8601
      )
      request_params_string = params_to_request_string(params)
      string_to_sign = prepare_sign_string(host, request_params_string)
      request_params_string += "&Signature=#{sign(string_to_sign)}"
      
      post(host, request_params_string)
    end
    
    
    private
      def sign(str)
        digest = OpenSSL::Digest::Digest.new('sha1')
        b64_hmac = Base64.encode64(OpenSSL::HMAC.digest(digest, @secret_access_key, str)).gsub("\n","")
        CGI::escape(b64_hmac)
      end
      
      def params_to_request_string(params)
        sorted_params = params.sort {|x,y| x[0].to_s <=> y[0].to_s}
        escaped_params = sorted_params.collect do |p|
          encoded = (CGI::escape(p[0].to_s) + "=" + CGI::escape(p[1].to_s))
          encoded.gsub('+', '%20')
        end
        escaped_params.join('&')
      end
      
      def post(host, params)
        http = Net::HTTP.new(host, 443)
        http.use_ssl = true

        http.start do
          req = Net::HTTP::Post.new('/')
          req.content_type = 'application/x-www-form-urlencoded'
          req['User-Agent'] = "moomerman-aws-gem"

          response = http.request(req, params)

          return response.body      
        end
      end
      
      def prepare_sign_string(host, params)
        string_to_sign =
          'POST' + "\n" +
          host + "\n" +
          '/' + "\n" +
          params
      end
  end
end