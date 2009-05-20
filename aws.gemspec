# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{aws}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Richard Taylor"]
  s.date = %q{2009-05-20}
  s.description = %q{aws is a Amazon Web Services client library for Ruby.}
  s.email = %q{moomerman@gmail.com}
  s.files = ["README.textile", "lib/aws.rb", "lib/aws", "lib/aws/ec2", "lib/aws/ec2/api.rb", "lib/aws/ec2/client.rb", "lib/aws/ec2/parser.rb", "lib/aws/ec2/request.rb"]
  s.has_rdoc = false
  s.homepage = %q{http://github.com/moomerman/aws}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{aws}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{aws is a Amazon Web Services client library for Ruby.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<xml-simple>, [">= 1.0.11"])
    else
      s.add_dependency(%q<xml-simple>, [">= 1.0.11"])
    end
  else
    s.add_dependency(%q<xml-simple>, [">= 1.0.11"])
  end
end
