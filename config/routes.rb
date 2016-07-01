Rails.application.routes.draw do
  root to: "home#index"

  resources :books, only: [:index, :show]
  resources :genres, only: [:index, :show, :new]

  # Redirect js asset request to the webpack-dev-server
  unless Rails.env.production?
    get '/assets/scripts/*js', to: redirect { |p|
      "http://127.0.0.1:8080/assets/scripts/#{p[:js]}.js"
    }
  end
end
