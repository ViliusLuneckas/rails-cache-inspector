# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cache/friendly/version'

Gem::Specification.new do |spec|
  spec.name          = 'cache-friendly'
  spec.version       = Cache::Friendly::VERSION
  spec.authors       = ['Vilius Luneckas']
  spec.email         = ['vilius.luneckas@gmail.com']
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = 'https://github.com/ViliusLuneckas/cache-friendly'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rails'
end
