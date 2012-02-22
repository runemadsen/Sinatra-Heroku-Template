require 'rubygems'
require 'bundler'
Bundler.require

# DataMapper.auto_upgrade!

set :root, File.dirname(__FILE__)

get '/' do
  erb :hello
end