Rails.application.routes.draw do
  resources :products, only: [:show, :index]
  resources :shopping_cart, only: [:index, :add_product_to_cart]
  post '/add_cart_item/:product_id' => 'shopping_cart#add_cart_item', :as => 'add_cart_item'
  get '/checkout-customer' => 'shopping_cart#checkout_customer'
  get '/checkout-shipping' => 'shopping_cart#checkout_shipping'
  get '/checkout-summary' => 'shopping_cart#checkout_summary'
  patch '/update-customer/:customer_id' => 'shopping_cart#update_customer',:as => 'update_customer'
  devise_for :customers
  devise_for :admins
  root 'products#index'

  namespace :admin do
    root 'orders#index'
    resources :products, :categories, :manufacturers, :orders, :shipping_options

  end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
