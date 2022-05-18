Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: %i[show new create]
  end
  resources :reviews, only: %i[edit update destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
