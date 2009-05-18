# Documentation: http://docs.amazonwebservices.com/AWSEC2/latest/DeveloperGuide/

module AWS
  module EC2
    
    def ec2_request(options)
      host = (@region ? @region + '.' : '') + 'ec2.amazonaws.com'
      options.merge!(
        :Version => '2009-04-04'
      )
      aws_request(host, options)
    end
    
    def describe_images
      ec2_request(:Action => 'DescribeImages')
    end
    
    def describe_availability_zones
      ec2_request(:Action => 'DescribeAvailabilityZones')
    end
    
    # Requires: ImageId
    def run_instances(options)
      default_options = {
        :Action => 'RunInstances',
        :MinCount => 1,
        :MaxCount => 1
      }
      default_options.merge!(options)
      ec2_request(default_options)
    end
    
    def terminate_instances(options)
      options.merge!(
        :Action => :TerminateInstances
      )
      ec2_request(options)
    end
    
    # Requires: InstanceId
    def unmonitor_instances(options)
      options.merge!(
        :Action => :UnmonitorInstances
      )
      ec2_request(options)
    end
    
    # Requires: InstanceId
    def monitor_instances(options)
      options.merge!(
        :Action => :MonitorInstances
      )
      ec2_request(options)
    end
    
    def describe_instances
      ec2_request(:Action => 'DescribeInstances')
    end
    
  end
end