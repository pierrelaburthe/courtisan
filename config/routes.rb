Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  root to: 'pages#home'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users, except: [:destroy, :show]
  resources :challenges, only: [:new, :create]

  resources :challenges, only: [ :show ] do
    resources :messages, only: [ :create ]
  end


  get 'challenges/wait'

  get 'users/profile'

  resources :waiting_lists, only: [:create]

  get 'pages/wait'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
