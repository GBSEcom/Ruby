$:.push File.expand_path("../lib", __FILE__)
require "openapi_client/version"

Gem::Specification.new do |s|
  s.name        = "first_data_gateway"
  s.version     = OpenapiClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Eric Margules", "Patrick Grenning"]
  s.email       = ["eric.margules@fiserv.com", "patrick.grenning@fiserv.com"]
  s.homepage    = "https://docs.firstdata.com/org/gateway"
  s.summary     = "First Data Gateway RESTFUL API Ruby SDK"
  s.description = "Ruby SDK to be used with First Data's IPG API (version 21.5.0). This SDK has been created and packaged to offer the easiest way to integrate your application into the First Data Gateway. This SDK gives you the ability to run transactions such as sales, preauthorizations, postauthorizations, credits, voids, and returns; transaction inquiries; setting up scheduled payments and much more."
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.1"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
  s.add_development_dependency 'vcr', '~> 3.0', '>= 3.0.1'
  s.add_development_dependency 'webmock', '~> 1.24', '>= 1.24.3'
  s.add_development_dependency 'autotest', '~> 4.4', '>= 4.4.6'
  s.add_development_dependency 'autotest-rails-pure', '~> 4.1', '>= 4.1.2'
  s.add_development_dependency 'autotest-growl', '~> 0.2', '>= 0.2.16'
  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.12'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
