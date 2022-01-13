require "sinatra"
require "sinatra/base"
require "sinatra/reloader"
require_relative "lib/player"

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
    $player_1 = Player.new(params[:player_one])
    $player_2 = Player.new(params[:player_two])
    redirect "/play"
  end
  
  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb(:play)
  end

  post '/attack' do
    erb(:attack)
  end

end