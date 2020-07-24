require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do

    erb :index

  end

  post '/names' do
    $game = Game.new(
      Player.new(params[:player_1_name]),
      Player.new(params[:player_2_name])
      )

    redirect '/play'
  end

  get '/play' do
    @player_1_hitpoints = $game.player_1.hitpoints
    @player_2_hitpoints = $game.player_2.hitpoints
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name

    erb :play
  end

  post '/attack' do
    
    $game.attack($game.player_2)
    erb :attack

  end

  run! if app_file == $0
  
end
