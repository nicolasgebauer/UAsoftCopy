Rails.application.routes.draw do
  resources :products
  devise_for :users
  root "pages#home"
  get "productos", to: "pages#home_products"
  # get "registrarse", to ""
  resources :users

  resource :shopping_cart, only: [:show]

  post 'shopping_cart/add/:product_id', to: "shopping_cart#add"
  match 'shopping_cart/remove/:product_id', to: "shopping_cart#remove", via: [:post]
  match 'shopping_cart/zap', to: "shopping_cart#zap", via: [:post, :get]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
