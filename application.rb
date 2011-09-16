require 'rubygems'
require 'bundler'
Bundler.require

# DataMapper.auto_upgrade!

class Application < Sinatra::Base
   
  get '/' do
    erb :front
  end

  #   404
  #---------------------------------------

  not_found do
    erb :notfound
  end
  
end



