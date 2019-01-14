ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require './config/chitter_mapper'

class Chitter < Sinatra::Base

  get '/' do
    @peeps = Peep.all
    erb(:index)
  end

  post '/peep' do
    @peep = Peep.create(message: params[:message])
    redirect '/'
  end

  get '/signup' do
    erb(:signup)
  end

  post '/signup' do
    
  end
end
