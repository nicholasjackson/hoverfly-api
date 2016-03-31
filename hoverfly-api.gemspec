# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hoverfly/api/version'

Gem::Specification.new do |spec|
  spec.name          = "hoverfly-api"
  spec.version       = Hoverfly::Api::VERSION
  spec.authors       = ["Nic Jackson"]
  spec.email         = ["jackson.nic@gmail.com"]

  spec.summary       = "hoverfly-api is a ruby client for the hoverfly service virtualisation API"
  spec.description   = "Hoverfly is a service virtualisation application it allows you to stub out dependent http connections.  https://github.com/SpectoLabs/hoverfly"
  spec.homepage      = "https://github.com/nicholasjackson/hoverfly-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "pry"

  spec.add_runtime_dependency "rest-client"
end
