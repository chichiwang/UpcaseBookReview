Rails.application.routes.draw do
  root to: "home#index"

  resources :books, only: [:index, :show]
  resources :genres, only: [:index, :show]
end
