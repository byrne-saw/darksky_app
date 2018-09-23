Rails.application.routes.draw do
  namespace :api do
    get '/weather' => 'weather#index'

    get '/ganja' => 'ganja#index'

    get '/strain/:name' => 'ganja#strain'
  end
end
