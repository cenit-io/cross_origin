# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cross_origin/version'

Gem::Specification.new do |spec|
  spec.name          = 'cross_origin'
  spec.version       = CrossOrigin::VERSION
  spec.authors       = ['Maikel Arcia']
  spec.email         = ['macarci@gmail.com']

  spec.summary       = %q{Allows Mongoid models to store and retrieve documents from multiples collections.}
  spec.homepage      = 'https://github.com/macarci/cross_origin'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 3.2.0'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.4'
  spec.add_development_dependency 'rake', '>= 13.0'
  spec.add_development_dependency 'mongoid-rspec', '>= 4.0'

  spec.add_runtime_dependency 'mongoid', '>= 8.0', '< 9.0'
end
