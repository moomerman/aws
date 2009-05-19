require 'rubygems'
require 'xmlsimple'

class Hash
  def method_missing(meth, *args, &block)
    if args.size == 0
      self[meth.to_s] || self[meth.to_sym]
    end
  end
end

doc =<<EOF
<DescribeRegionsResponse xmlns="http://ec2.amazonaws.com/doc/2009-04-04/">
    <requestId>87f62c7b-1186-4d79-9943-47e29bf9c171</requestId>
    <regionInfo>
        <item>
            <regionName>eu-west-1</regionName>
            <regionEndpoint>eu-west-1.ec2.amazonaws.com</regionEndpoint>
        </item>
        <item>
            <regionName>us-east-1</regionName>
            <regionEndpoint>us-east-1.ec2.amazonaws.com</regionEndpoint>
        </item>
    </regionInfo>
</DescribeRegionsResponse>
EOF

puts XmlSimple.xml_in(doc, { 'forcearray' => ['item'], 'suppressempty' => nil, 'keeproot' => false }).regionInfo.item.size
