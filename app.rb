# Require the bundler gem and then call Bundler.require to load in all gems
# listed in Gemfile.
require 'bundler'
Bundler.require

# Setup DataMapper with a database URL. On Heroku, ENV['DATABASE_URL'] will be
# set, when working locally this line will fall back to using SQLite in the
# current directory.
DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite://#{Dir.pwd}/development.sqlite")

# Define a simple DataMapper model.
class Thing
  include DataMapper::Resource

  property :id, Serial, :key => true
  property :title, String, :length => 255
  property :description, Text
end

# Finalize the DataMapper models.
DataMapper.finalize

# Tell DataMapper to update the database according to the definitions above.
DataMapper.auto_upgrade!

get '/' do
  erb :index
end

get '/things' do
  @things = Thing.all
  erb :things_index
end

get '/things/new' do
  erb :things_new
end

post '/things/new' do
  @thing = Thing.new(params)
  @thing.save
  redirect '/things'
end

get '/things/:id' do
  @thing = Thing.get(params[:id])
  erb :things_show
end

get '/things/:id/edit' do
  @thing = Thing.get(params[:id])
  erb :things_edit
end

post '/things/:id/update' do
  @thing = Thing.get(params[:id])
  @thing.update(:title => params[:title], :description => params[:description])
  @thing.save
  redirect "/things/#{params[:id]}"
end

get '/things/:id/delete' do
  Thing.get(params[:id]).destroy
  redirect '/things'
end
