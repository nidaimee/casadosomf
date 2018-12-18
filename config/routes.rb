Rails.application.routes.draw do

  namespace :admin do
    resources :discounts
    resources :sells
    resources :product_quantities
    resources :products
    resources :addresses
    resources :services
    resources :clients
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
