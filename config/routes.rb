Rails.application.routes.draw do
  get 'shopping_carts/show'
  get 'orders/create'
  get 'products/index'
  post 'orders/create/:product_id', to: 'orders#create', as: 'shopping_cart'
  get 'carts', to: 'shopping_carts#show', as: 'show_cart'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: "products#index"

end
