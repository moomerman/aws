# Documentation: http://docs.amazonwebservices.com/AmazonCloudWatch/latest/DeveloperGuide/

module AWS
  module CloudWatch

    def cw_request(options)
      host = "monitoring.amazonaws.com"
      options.merge!(
        :Version => '2009-05-15'
      )
      aws_request(host, options)
    end

    def get_metric_statistics(options)
      options.merge!(
        :Action => :GetMetricStatistics
      )
      cw_request(options)
    end

    def list_metrics
      cw_request(:Action => :ListMetrics)
    end
  
  end
end