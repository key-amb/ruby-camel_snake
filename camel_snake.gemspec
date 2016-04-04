# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'camel_snake/version'

Gem::Specification.new do |spec|
  spec.name          = "camel_snake"
  spec.version       = CamelSnake::VERSION
  spec.authors       = ["YASUTAKE Kiyoshi"]
  spec.email         = ["yasutake.kiyoshi@gmail.com"]

  spec.summary       = %q{Mix-in for String to convert CamelCase and snake_case.}
  spec.description   = %q{Mix-in module for String class which enables to convert CamelCase and snake_case}
  spec.homepage      = "https://github.com/key-amb/ruby-camel_snake"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
