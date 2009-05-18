# Documentation: http://docs.amazonwebservices.com/ElasticLoadBalancing/latest/DeveloperGuide/

module AWS
  module ElasticLoadBalancing
    
    def elb_request(options)
      host = "elasticloadbalancing.amazonaws.com"
      options.merge!(
        :Version => '2009-05-15'
      )
      aws_request(host, options)
    end
    
    def configure_health_check
    end
    
    # Requires: AvailabilityZones, LoadBalancerName, Listeners
    def create_load_balancer(options)
      options.merge!(
        :Action => 'CreateLoadBalancer'
      )
      elb_request(options)
    end
    
    # Requires: LoadBalancerName
    def delete_load_balancer(options)
      options.merge!(
        :Action => 'DeleteLoadBalancer'
      )
      elb_request(options)
    end

    def deregister_instances_from_load_balancer(options)
      options.merge!(
        :Action => 'DeregisterInstancesFromLoadBalancer'
      )
      elb_request(options)
    end

    def describe_load_balancers
      elb_request(:Action => 'DescribeLoadBalancers')
    end

    def describe_instance_health(options)
      options.merge!(
        :Action => 'DescribeInstanceHealth'
      )
      elb_request(options)
    end

    def disable_availability_zones_for_load_balancer(options)
      options.merge!(
        :Action => 'DisableAvailabilityZonesForLoadBalancer'
      )
      elb_request(options)
    end

    def enable_availability_zones_for_load_balancer(options)
      options.merge!(
        :Action => 'EnableAvailabilityZonesForLoadBalancer'
      )
      elb_request(options)
    end

    def register_instances_with_load_balancer(options)
      options.merge!(
        :Action => 'RegisterInstancesWithLoadBalancer'
      )
      elb_request(options)
    end
  
  end
end