Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :personalities, only: [:index, :show, :new, :create, :update, :edit]
  # do
  #   resources :doses, only: [:new, :create]
  # end
  # resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
