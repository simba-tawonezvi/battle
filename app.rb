require "sinatra/base"
require "sinatra/reloader"

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  get '/test' do
    erb(:test)
  end

  post '/names' do
    @player_1 = params[:player_one]
    @player_2 = params[:player_two]
    erb(:play)
  end

end