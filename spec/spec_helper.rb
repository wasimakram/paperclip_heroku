require 'rubygems'
require 'bundler/setup'

Bundler.require(:test)

$: << File.dirname(__FILE__) + '/../lib'
require 'paperclip_heroku'