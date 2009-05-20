require 'rubygems'
require 'xmlsimple'

class Hash
  def method_missing(meth, *args, &block)
    if args.size == 0
      self[meth.to_s] || self[meth.to_sym]
    end
  end
end

module AWS
  module EC2
    module Parser
      def parse(xml_response)
        result = XmlSimple.xml_in(xml_response, { 'forcearray' => ['item'], 'suppressempty' => nil, 'keeproot' => false })
      end
    end
  end
end
