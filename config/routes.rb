Rails.application.routes.draw do
  resources :shipping_options
  devise_for :customers

  resources :products
  resources :categories
  resources :manufacturers


  namespace :admin do
    resources :products, :categories, :manufacturers, :orders
    devise_for :admins
  end

  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
