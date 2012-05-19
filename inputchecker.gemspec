# -*- encoding: utf-8 -*-
require File.expand_path('../lib/inputchecker/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Xavier Canal i Masjuan"]
  gem.email         = ["xavi@itnig.net"]
  gem.description   = "Input checker add lots of new validation over the inputs such a phone, money, email, ip, postal, url, ..."
  gem.summary       = "Input checker add lots of new validation over the inputs"
  gem.homepage      = "http://github.com/xeviknal/inputchecker"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "inputchecker"
  gem.require_paths = ["lib"]
  gem.version       = Inputchecker::VERSION
end
