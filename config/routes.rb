Rails.application.routes.draw do
  #packing lanes routes:
  get 'packing_lane/index'

  # cooking groups routes:
  root 'cooking_groups#index'
  resources :cooking_groups

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
