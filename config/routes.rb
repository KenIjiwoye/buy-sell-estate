Rails.application.routes.draw do

  resources :amenities
  resources :properties
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  resources :users, only: [:index, :show]
  root 'public#index'
  resources :public, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
