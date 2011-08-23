$: << File.dirname(__FILE__) + '/lib'
require 'paperclip/heroku/version'

Gem::Specification.new do |gem|
  # General info
  gem.name     = 'paperclip_heroku'
  gem.summary  = 'Paperclip + Heroku + Amazon S3'
  gem.description = <<-EOS.chomp
Easy Paperclip attachments using Heroku and Amazon S3.
EOS
  gem.version  = Paperclip::Heroku::Version.to_s
  gem.date     = Time.now.strftime('%Y-%m-%d')

  # Author
  gem.authors  = 'James Wilding'
  gem.email    = 'office@jameswilding.net'
  gem.homepage = 'http://github.com/jameswilding/paperclip_heroku'  

  # Dependencies
  gem.add_dependency 'paperclip', '>= 1.2.2'

  # Files & executables
  gem.files    = Dir['lib/**/*', 'README.md']

  # Development
  gem.add_development_dependency 'rake'  
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'autotest'  

  # Misc
  gem.platform = Gem::Platform::RUBY
end
