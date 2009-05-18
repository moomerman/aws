module AWS
  module AutoScaling
    
    def as_request(options)
      host = "autoscaling.amazonaws.com"
      options.merge!(
        :Version => '2009-05-15'
      )
      aws_request(host, options)
    end
    
    def describe_auto_scaling_groups
      as_request(:Action => 'DescribeAutoScalingGroups')
    end
    
  end
end