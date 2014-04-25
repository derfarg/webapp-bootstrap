require 'rubygems'
require 'sinatra/base'
require 'haml'
require 'coffee-script'

class WebApp < Sinatra::Base
  get '/' do
    haml :index
  end

  not_found do
    halt 404
  end
end
