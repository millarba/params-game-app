Rails.application.routes.draw do
  get '/params_game' => 'params_games#first_game'
  get '/param_game_2' => 'params_games#second_game'

  get '/url_segment_params/:wildcard' => 'params_games#segment_params'
end
