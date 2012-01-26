require 'bundler'
Bundler.require

configure do |c|
  # enable :sessions
  set :root, File.dirname(__FILE__)
  set :views, Proc.new{ File.join(root, "app", "views")}
  set :scss, :style => :compact
  set :database, ENV['DATABASE_URL'] || "sqlite3://db/development.sqlite"
  ActiveRecord::Base.include_root_in_json = false
end

require './app/models'
require './app/routes'