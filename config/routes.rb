Rails.application.routes.draw do
# cooking groups routes:
  root 'cooking_groups#index'
  resources :cooking_groups

  # get "/cooking_groups", to:"cooking_groups#index"
  # get "/cooking_groups/:id", to: "cooking_groups#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
