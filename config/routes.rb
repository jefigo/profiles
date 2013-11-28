Profiles::Application.routes.draw do

  root to: 'dashboard#index'

  get '/auth/:provider/callback', to: 'sessions#create'
  post '/auth/:provider/callback', to: 'sessions#create'

end
