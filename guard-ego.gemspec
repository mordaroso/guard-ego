# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'guard/ego/version'

Gem::Specification.new do |s|
  s.name = 'guard-ego'
  s.version = Guard::EgoVersion::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ['Fabio Kuhn']
  s.email = ['mordaroso@gmail.com']
  s.homepage = 'http://rubygems.org/gems/guard-ego'
  s.summary = 'Guard gem to reload guard itself'
  s.description = 'Guard::Ego automatically restarts guard when needed'

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project = 'guard-ego'

  s.add_dependency 'guard', '>= 0.2.1'

  s.add_development_dependency 'rspec', '~> 2.0.1'

  s.files = Dir.glob('{lib}/**/*') + %w[LICENSE README.rdoc CHANGELOG.rdoc]
  s.require_path = 'lib'
end