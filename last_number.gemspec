# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'last_number/version'

Gem::Specification.new do |s|
  s.name        = 'last_number'
  s.version  = LastNumber::VERSION
  s.date        = '2015-08-31'
  s.summary     = 'Get the last number used'
  s.description = 'Gets the last number used'
  s.authors     = ['Garrett Kelly']
  s.email       = 'garrettk@subpop.com'
  s.files       = Dir['{lib}/**/*']
  s.test_files  = Dir['{test}/**/*']

  s.license       = 'MIT'
  s.require_paths = ['lib']

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if s.respond_to?(:metadata)
    s.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "minitest"
  s.add_development_dependency "pry"

  s.add_dependency('aws-sdk-v1', '~> 1.65')
  s.add_dependency('activesupport', '~> 4.1', '>= 4.1.11')
  s.add_dependency('json', '~> 1.7', '>= 1.7.7')
end
