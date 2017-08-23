Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users, except: [:destroy, :show] do
    resources :challenges, only: [:show, :new, :create] do
      resources :messages, only: [:create]
    end
  end

  get 'challenges/wait'
  get 'users/profile'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
