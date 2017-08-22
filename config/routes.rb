Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users, except: [:destroy, :show] do
    resources :challenges, only: [:show, :new, :create]
  end

  get 'challenges/wait'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
