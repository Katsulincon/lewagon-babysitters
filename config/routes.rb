Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/babysitters', to: 'babysitters#index', as: :babysitters
  get '/babysitters/:id', to: 'babysitters#show', as: :babysitter

  # reservations
  get '/reservations', to: 'reservations#index', as: :reservations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/ui", to: 'pages#uidisplay'
end
