require "sinatra/base"
require "sinatra/reloader"



class Battle < Sinatra::Base

  enable :sessions

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
    session[:player_1] = params[:player_one]
    session[:player_2] = params[:player_two]
    redirect "/play"
  end
  
  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb(:play)
  end

end