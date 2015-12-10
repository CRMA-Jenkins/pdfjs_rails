# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pdfjs_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "pdfjs_rails"
  spec.version       = PdfjsRails::VERSION
  spec.authors       = ["sergeykish"]
  spec.email         = ["sergeykish@gmail.com"]

  spec.summary       = %q{PDF.js viewer for asset pipeline}
  spec.description   = %q{PDF.js viewer for asset pipeline}
  spec.homepage      = "https://github.com/sergeykish/pdfjs_rails"
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
