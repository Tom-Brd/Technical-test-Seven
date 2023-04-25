Rails.application.routes.draw do

  root 'home#index'

  # Pokemon routes
  get '/pokemon', to: 'pokemon#index'
  get '/pokemon/:id', to: 'pokemon#show'
  get '/pokemon/:id/checkout', to: 'pokemon#checkout'
  post '/pokemon/:id/buy', to: 'pokemon#buy'
  post '/pokemon/:id/sell', to: 'pokemon#sell'

  # Users routes
  get '/me', to: 'user#show'
  get '/me/add', to: 'user#add_money_form'
  patch '/me/add', to: 'user#add_money'
get '/me/transactions', to: 'user#transactions'


end
