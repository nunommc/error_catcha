# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'error_catcha/version'

Gem::Specification.new do |spec|
  spec.name          = "error_catcha"
  spec.version       = ErrorCatcha::VERSION
  spec.authors       = ["Nuno Costa", "Ivo Jesus"]
  spec.email         = ["nuno.mmc@gmail.com", "ivo.jesus@gmail.com"]
  spec.summary       = %q{Rescues RecordNotFound Exception and shows a prettier error page}
  spec.description   = %q{Creates those methods you'll always need in your Rails App to rescue RecordNotFound and display prettier 404, 500 error pages}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "slim-rails", "~> 2.1.5"
end
