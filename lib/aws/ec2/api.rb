module AWS
  module EC2
      API = {
        :ec2 => {
          :host => 'ec2.amazonaws.com',
          :documentation => 'http://docs.amazonwebservices.com/AWSEC2/latest/APIReference/',
          :regions => ['us-east-1', 'eu-west-1'],
          :version => '2009-04-04',
          :methods => [
            :allocate_address, :associate_address, :attach_volume, :authorize_security_group_ingress,
            :bundle_instance, :cancel_bundle_task, :confirm_product_instance, :create_key_pair,
            :create_security_group, :create_snapshot, :create_volume, :delete_key_pair, :delete_security_group,
            :delete_snapshot, :delete_volume, :deregister_image, :describe_addresses, :describe_availability_zones, 
            :describe_bundle_tasks, :describe_image_attribute, :describe_images, :describe_instances, :describe_key_pairs, 
            :describe_regions, :describe_reserved_instances, :describe_reserved_instances_offerings, :describe_security_groups, 
            :describe_snapshots, :describe_volumes, :detach_volume, :disassociate_address, :get_console_output,
            :modify_image_attribute, :monitor_instances, :purchase_reserved_instances_offering, :reboot_instances,
            :register_image, :release_address, :reset_image_attribute, :revoke_security_group_ingress,
            :run_instances, :terminate_instances, :unmonitor_instances
          ]
        },
      
        :elastic_load_balancing => {
          :host => 'elasticloadbalancing.amazonaws.com',
          :documentation => 'http://docs.amazonwebservices.com/ElasticLoadBalancing/latest/DeveloperGuide/',
          :version => '2009-05-15',
          :methods => [
            :configure_health_check, :create_load_balancer, :delete_load_balancer, :deregister_instances_from_load_balancer,
            :describe_load_balancers, :describe_instance_health, :disable_availability_zones_for_load_balancer,
            :enable_availability_zones_for_load_balancer, :register_instances_with_load_balancer
          ]
        },
      
        :cloud_watch => {
          :host => 'monitoring.amazonaws.com',
          :documentation => 'http://docs.amazonwebservices.com/AmazonCloudWatch/latest/DeveloperGuide/', 
          :version => '2009-05-15',
          :methods => [:get_metric_statistics, :list_metrics]
        },
      
        :auto_scaling => {
          :host => 'autoscaling.amazonaws.com',
          :documentation => 'http://docs.amazonwebservices.com/AutoScaling/latest/DeveloperGuide/',
          :version => '2009-05-15',
          :methods => [
            :create_auto_scaling_group, :create_launch_configuration, :create_or_update_scaling_trigger,
            :delete_auto_scaling_group, :delete_launch_configuration, :delete_trigger,
            :describe_auto_scaling_groups, :describe_launch_configurations, :describe_scaling_activities,
            :describe_triggers, :set_desired_capacity, :terminate_instance_in_auto_scaling_group,
            :update_auto_scaling_group
          ]
        }
      }
  end
end