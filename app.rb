ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require './config/chitter_mapper'

class Chitter < Sinatra::Base

  enable :sessions

  get '/' do
    @peeps = Peep.all
    erb(:index)
  end

  post '/peep' do
    @peep = Peep.create(message: params[:message]) #user_id: params[:id]#
    redirect '/'
  end

  get '/signup' do
    erb(:signup)
  end

  post '/signup' do
    user = User.create(email: params[:email], password: params[:password], name: params[:name], username: params[:username])
    session[:id] = user.id
    redirect '/'
    # redirect "/profile/#{session[:id]}"
  end

  get '/profile/:id' do
    @user = User.get(params[:id])
    # @peeps = Peep.all(:conditions => { :user_id => params[:id] })
    erb(:profile)
  end
end
