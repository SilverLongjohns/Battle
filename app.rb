require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do

    erb :index

  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @@game = Game.new(player_2, player_1)
    redirect '/play'
  end

  post '/switch' do
    redirect '/play'
  end

  get '/play' do
    @game = @@game
    @game.end_turn
    erb :play
  end

  post '/attack' do
    @game = @@game
    @game.attack(@game.opponent)
    erb :attack
  end

  post '/game_over' do
    "Congratulations!"
  end

  run! if app_file == $0
  
end
