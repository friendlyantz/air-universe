Rails.application.routes.draw do
  # get "users/:id/galaxies/new", to: "galaxies#new"
  resources :galaxies, only: [ :index, :edit, :show ]
  devise_for :users
  resources :users, only: [ :show ] do
    resources :galaxies, only: [ :index, :new, :create ]
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
