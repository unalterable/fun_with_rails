Rails.application.routes.draw do
  resources :members

  post 'members/import', to: 'members#import'

  root to: 'home#index'

  get '/send', to: 'home#mail'
end
