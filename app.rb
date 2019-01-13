ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require './config/chitter_mapper'

class Chitter < Sinatra::Base

end
