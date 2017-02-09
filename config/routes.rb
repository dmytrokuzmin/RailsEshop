Rails.application.routes.draw do
  resources :products, only: [:show, :index]
  resources :shopping_cart, only: [:index, :add_product_to_cart]
  post '/add_cart_item/:product_id' => 'shopping_cart#add_cart_item', :as => 'add_cart_item'
  get '/checkout_customer' => 'shopping_cart#checkout_customer'
  get '/checkout_summary' => 'shopping_cart#checkout_summary'
  post '/create_order/:cart_id' => 'shopping_cart#create_order', :as => 'create_order'
  patch '/update_customer/:customer_id' => 'shopping_cart#update_customer',:as => 'update_customer'
  devise_for :customers
  devise_for :admins
  root 'products#index'

  namespace :admin do
    root 'orders#index'
    resources :products, :categories, :manufacturers, :orders, :shipping_options

  end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
