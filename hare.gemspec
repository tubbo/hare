$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)

require 'hare/version'

Gem::Specification.new do |s|
  s.name          = 'hare'
  s.version       = Hare::VERSION
  s.authors       = ['Clinton Judy']
  s.email         = ['clinton@j-udy.com']
  s.summary       = 'Rails plugin for RabbitMQ'
  s.description   = <<-DESC
This is a Rails plugin that makes it easier for your models
to communicate via AMQP to RabbitMQ.
DESC
  s.homepage      = 'https://github.com/judy/hare'
  s.license       = 'ISC'

  s.files         = `git ls-files -z`.split("\x0")
  s.test_files    = s.files.grep(/spec\//)
  s.require_paths = %w(lib)

  s.add_dependency 'railties', '~> 4.0'
  s.add_dependency 'bunny', '~> 1.1.8'
  s.add_dependency 'daemons', '~> 1.1'
  s.add_dependency 'spring', '> 1.1'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rails', '~> 4.0.3'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '3.0.0.beta2'
  s.add_development_dependency 'guard'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'guard-livereload'
  s.add_development_dependency 'timecop'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'rubocop'
end
