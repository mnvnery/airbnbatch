Rails.application.routes.draw do
  devise_for :users
  root to: 'personalities#index'
  resources :personalities do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index, :show, :destroy, :edit, :update]

  # do
  #   resources :doses, only: [:new, :create]
  # end
  # resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
