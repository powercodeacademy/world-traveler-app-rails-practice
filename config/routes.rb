Rails.application.routes.draw do
  resources :vacations, only: [:new, :create]
  resources :countries, only: [:index, :show]
  resources :travelers, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
