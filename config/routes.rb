Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get  "/games", to: "games#index"
  # get  "/games/:id", to: "games#show"
  resources :games do
    resources :comments
  end
  root "games#index"
end
