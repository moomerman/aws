require 'aws/ec2/request'
require 'aws/ec2/api'

module AWS
  module EC2
    class Client
      include EC2::Request
      include EC2

      def initialize(options = {})
        @access_key_id = options[:access_key_id]
        @secret_access_key = options[:secret_access_key]
        @region = options[:region]
        @debug = options[:debug] || false
      end

      def method_missing(method_name, *args)
        action = camelize(method_name)

        config = EC2::API.find{|x, y| y[:methods].include?(method_name.to_sym)}

        raise ArgumentError, "Unknown Method: #{method_name}" unless config

        host = config.last[:host]
        regions = config.last[:regions] || []
        host = @region + '.' + host if @region and regions.include?(@region)
        version = config.last[:version]
        
        user_options = args[0] || {}
        user_options.merge!(:action => action, :version => version)
        camelized_options = {}
        user_options.each{|key, value| camelized_options[camelize(key).to_sym] = value}
        
        puts "calling host=#{host}, params=#{camelized_options.inspect}" if @debug
        
        aws_request(host, camelized_options)
      end

      def camelize(key)
        key.to_s.gsub(/\/(.?)/) { "::" + $1.upcase }.gsub(/(^|_)(.)/) { $2.upcase }
      end
    end
  end
end