Gem::Specification.new do |s|
  s.name        = 'last_number'
  s.version     = '0.0.1'
  s.date        = '2015-08-31'
  s.summary     = 'Get the last number used'
  s.description = 'Gets the last number used'
  s.authors     = ['Garrett Kelly']
  s.email       = 'garrettk@subpop.com'
  s.files       = Dir['{lib}/**/*']
  s.test_files  = Dir['{test}/**/*']

  s.homepage    =
    'http://rubygems.org/gems/last_number'
  s.license       = 'MIT'
  s.require_paths = ['lib']

  s.add_development_dependency('bundler', '1.10')
  s.add_development_dependency('rake', '~> 10.4')
  s.add_development_dependency('minitest', '~> 5.7.0')

  s.add_dependency('aws-sdk-v1', '~> 1.65')
  s.add_dependency('activesupport', '~> 4.1', '>= 4.1.11')
  s.add_dependency('json', '~> 1.7', '>= 1.7.7')
end
