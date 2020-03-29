require 'sinatra/base'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    p 'GET PLAY'
    @game = $game
    erb :play
  end

  post '/attack' do
    p 'POST ATTACK'
    $game.attack($game.awaiting_turn)
    p 'LOOOK HERE:' + $game.awaiting_turn.name
    $game.switch_turns
    if $game.game_over?
      redirect '/game-over'
    else
      redirect '/attack'
    end
  end

  get '/attack' do
    p 'GET ATTACK'
    @game = $game
    erb :attack
  end

  get '/game-over' do
    p 'GET GAME OVER'
    @game = $game
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
