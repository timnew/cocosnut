# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocosnut/meta'

Gem::Specification.new do |spec|
  spec.name          = 'cocosnut'
  spec.version       = Cocosnut::VERSION
  spec.authors       = ['timnew']
  spec.email         = ['timnew.wti@gmail.com']
  spec.summary       = Cocosnut::DESCRIPTION
  spec.description   = Cocosnut::DESCRIPTION
  spec.homepage      = 'https://github.com/timnew/cocosnut'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'xcodeproj', '~> 0.19.1'
  spec.add_runtime_dependency 'commander', '~> 4.2.0'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-byebug'
end
