require 'rubygems'
require 'bundler'
Bundler.require

set :root, File.dirname(__FILE__)

get '/' do
  erb :hello
end