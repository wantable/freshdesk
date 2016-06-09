# coding: utf-8
# -- this is magic line that ensures "../lib" is in the load path -------------
$:.push File.expand_path("../lib", __FILE__)
require 'freshdesk/version'

Gem::Specification.new do |spec|
  spec.name          = "freshdesk"
  spec.version       = Freshdesk::VERSION
  spec.authors       = ["Kevin Solkowski"]
  spec.email         = ["it@wantable.com"]

  spec.summary       = "Ruby wrapper for freshdesk api"
  spec.homepage      = 'http://github.com/wantable/freshdesk'
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files`.split("\n")

  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  #spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency('rest-client')

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
