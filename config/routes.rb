Rails.application.routes.draw do
  root to: 'galaxies#index'

  resources :galaxies, only: [ :index, :show, :destroy, :update ] do
    resources :bookings, only: [ :new, :create ]
  end
  devise_for :users
  resources :users, only: [ :show ] do
    resources :galaxies, only: [ :index, :new, :create, :edit]
  end

  resources :bookings, only: [ :edit, :update, :destroy ]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
