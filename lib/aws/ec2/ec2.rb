# Documentation: http://docs.amazonwebservices.com/AWSEC2/latest/APIReference/

module AWS
  module EC2
    
    def ec2_request(options)
      host = (@region ? @region + '.' : '') + 'ec2.amazonaws.com'
      options.merge!(
        :Version => '2009-04-04'
      )
      aws_request(host, options)
    end
    
    def describe_addresses
      ec2_request(:Action => 'DescribeAddresses')
    end
    
    def describe_availability_zones
      ec2_request(:Action => 'DescribeAvailabilityZones')
    end
    
    def describe_images
      ec2_request(:Action => 'DescribeImages')
    end
    
    def describe_instances
      ec2_request(:Action => 'DescribeInstances')
    end
    
    def describe_key_pairs
      ec2_request(:Action => 'DescribeKeyPairs')
    end
    
    def describe_regions
      ec2_request(:Action => 'DescribeRegions')
    end
    
    def describe_security_groups
      ec2_request(:Action => 'DescribeSecurityGroups')
    end
    
    def describe_snapshots
      ec2_request(:Action => 'DescribeSnapshots')
    end
    
    def describe_volumes
      ec2_request(:Action => 'DescribeVolumes')
    end
    
    # Requires: InstanceId
    def monitor_instances(options)
      options.merge!(
        :Action => :MonitorInstances
      )
      ec2_request(options)
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
    
  end
end