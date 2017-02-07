Rails.application.routes.draw do
  namespace :admin do
    root 'orders#index'
    resources :products, :categories, :manufacturers, :orders, :shipping_options
    devise_for :admins
  end

  #resources :products, :categories, :manufacturers
  devise_for :customers
  root 'products#index'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
