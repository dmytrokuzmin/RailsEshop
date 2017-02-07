Rails.application.routes.draw do
  resources :products, only: [:show, :index]
  devise_for :customers
  root 'products#index'

  namespace :admin do
    root 'orders#index'
    resources :products, :categories, :manufacturers, :orders, :shipping_options
    devise_for :admins
  end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
