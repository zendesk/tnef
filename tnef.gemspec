require File.expand_path('../lib/tnef/version', __FILE__)

Gem::Specification.new 'tnef', Tnef::VERSION do |gem|
  gem.authors       = ['Mick Staugaard']
  gem.email         = ['mick@staugaard.com']
  gem.description   = 'Extract e-mail attachments with MIME type "application/ms-tnef", including tnef binary'
  gem.summary       = 'TNEF is a program for unpacking MIME attachments of type "application/ms-tnef". This is a Microsoft only attachment.'
  gem.homepage      = 'https://github.com/zendesk/tnef'

  gem.files         = Dir.glob('lib/**/*') + Dir.glob('ext/**/*') - Dir.glob('ext/tnef/tests/files/**/*.{tnef,baseline}')
  gem.extensions    = ['ext/tnef/extconf.rb']

  gem.add_development_dependency "rake"
  gem.add_development_dependency "minitest"
  gem.add_development_dependency "minitest-rg"
  gem.add_development_dependency "bump"
end
