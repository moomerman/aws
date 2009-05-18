Dir[File.join(File.dirname(__FILE__), 'aws/**/*.rb')].sort.each { |lib| require lib }

require 'time'
require 'openssl'
require 'digest/sha1'
require 'base64'
require 'uri'
require 'net/https'
require 'cgi'

module AWS
  class Client
    include Base
    include EC2
    include CloudWatch
    include ElasticLoadBalancing
    include AutoScaling
  
    def initialize(options = {})
      @access_key_id = options[:access_key_id]
      @secret_access_key = options[:secret_access_key]
      @region = options[:region]
    end
      
  end
end