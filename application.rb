require 'bundler'
Bundler.require
require './helpers'
require './routes'

configure do |c|
  # Turn on sessions. Makes the `session` hash available to routes and views.
  # enable :sessions
  set :root, File.dirname(__FILE__)
  set :views, Proc.new{ File.join(root, "views")}
end
