source :rubygems

gem 'paperclip', '>=2.3.12'

group :development, :test do
  gem 'rake'
  gem 'rspec'
  gem 'autotest'
  
  # OS X specifics
  if RUBY_PLATFORM =~ /darwin/
    gem 'autotest-fsevent', :require => 'autotest/fsevent' 
    gem 'autotest-growl',   :require => 'autotest/growl'
  end
end