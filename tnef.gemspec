# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tnef/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mick Staugaard"]
  gem.email         = ["mick@staugaard.com"]
  gem.description   = "TNEF"
  gem.summary       = "TNEF"
  gem.homepage      = ""

  gem.files         = Dir.glob("lib/**/*") + Dir.glob('ext/**/*')
  gem.extensions    = ['ext/tnef/extconf.rb']
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "tnef"
  gem.require_paths = ["lib"]
  gem.version       = Tnef::VERSION
end
