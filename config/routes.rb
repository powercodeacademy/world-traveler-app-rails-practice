Rails.application.routes.draw do
  resources :vacations
  resources :countries, only: [:index, :show]
  resources :travelers, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
