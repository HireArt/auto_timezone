# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'auto_timezone/version'

Gem::Specification.new do |spec|
  spec.name          = 'auto_timezone'
  spec.version       = AutoTimezone::VERSION
  spec.authors       = ['smudge']
  spec.email         = ['nathan@ngriffith.com']
  spec.summary       = 'Simple and unobtrusive timezone configuration for Rails'
  spec.description   = 'Automatically infer and set `Time.zone` with each web request.'
  spec.homepage      = 'http://github.com/smudge/auto_timezone'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_dependency 'railties', '~> 3.2'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
