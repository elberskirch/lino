# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lino/version'

Gem::Specification.new do |spec|
  spec.name          = "lino"
  spec.version       = Lino::VERSION
  spec.authors       = ["Dominik Elberskirch"]
  spec.email         = ["dominik.elberskirch@gmail.com"]
  spec.summary       = %q{lino is a simple cli application for running a jekyll blog}
  spec.description   = %q{lino is a simple cli application for running a jekyll blog. It helps you creating pages, posts and managing drafts. It assumes you already have a layout and your jekyll blog is set up.}
  spec.homepage      = "https://github.com/elberskirch/lino"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
  
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
