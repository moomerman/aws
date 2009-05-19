module AWS
  module EC2
      API = {
        :ec2 => {
          :host => 'ec2.amazonaws.com',
          :regions => ['us-east-1', 'eu-west-1'],
          :version => '2009-04-04',
          :methods => [
              :describe_addresses, :describe_availability_zones, :describe_images, :describe_instances, 
              :describe_key_pairs, :describe_regions, :describe_security_groups, :describe_snapshots, 
              :describe_volumes, :monitor_instances, :run_instances, :terminate_instances,
              :unmonitor_instances
          ]
        },
      
        :elastic_load_balancing => {
          :host => 'elasticloadbalancing.amazonaws.com',
          :version => '2009-05-15',
          :methods => [
            :configure_health_check, :create_load_balancer, :delete_load_balancer, :deregister_instances_from_load_balancer,
            :describe_load_balancers, :describe_instance_health, :disable_availability_zones_for_load_balancer,
            :enable_availability_zones_for_load_balancer, :register_instances_with_load_balancer
          ]
        },
      
        :cloud_watch => {
          :host => 'monitoring.amazonaws.com',
          :version => '2009-05-15',
          :methods => [:get_metric_statistics, :list_metrics]
        },
      
        :auto_scaling => {
          :host => 'autoscaling.amazonaws.com',
          :version => '2009-05-15',
          :methods => [:describe_auto_scaling_groups]
        }
      }
  end
end