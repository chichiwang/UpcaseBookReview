Rails.application.routes.draw do
  root to: "home#index"

  resources :books, only: [:index, :show]
  get '/genres', to: 'books#index', as: 'genres'
end
