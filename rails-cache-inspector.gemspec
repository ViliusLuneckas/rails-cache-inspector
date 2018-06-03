# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rails-cache-inspector/version'

Gem::Specification.new do |spec|
  spec.name          = 'rails-cache-inspector'
  spec.version       = RailsCacheInspector::VERSION
  spec.authors       = ['Vilius Luneckas']
  spec.email         = ['vilius.luneckas@gmail.com']
  spec.summary       = %q{Dead simple tool for visual debugging of fragment cache.}
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/ViliusLuneckas/rails-cache-inspector'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rails'
end
