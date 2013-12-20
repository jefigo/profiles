Profiles::Application.routes.draw do

  root to: 'dashboard#index'

  resources :users, only: :show

  get '/auth/:provider/callback', to: 'sessions#create'
  post '/auth/:provider/callback', to: 'sessions#create'

end
