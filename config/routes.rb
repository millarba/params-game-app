Rails.application.routes.draw do
  get '/params_game' => 'params_games#first_game'
  get '/param_game_2' => 'params_games#second_game'

  get '/url_segment_params/:wildcard' => 'params_games#segment_params'

  get '/form_params_url' => 'params_games#get_form'
  post '/form_result_url' => 'params_games#use_form'

  get '/guess_form_url' => 'params_games#get_guess'
  post '/guess_result_url' => 'params_games#use_guess'
end
