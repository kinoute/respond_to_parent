# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'respond_to_parent/version'

Gem::Specification.new do |gem|
  gem.name          = "respond_to_parent"
  gem.version       = RespondToParent::VERSION
  gem.authors       = ["Max Gonzih"]
  gem.email         = ["gonzih@gmail.com"]
  gem.description   = %q{respond_to_parent for Rails 4}
  gem.summary       = %q{respond_to_parent gem ported for Rails >4}
  gem.homepage      = ""

  gem.add_dependency 'rails',     '~> 4.2'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
