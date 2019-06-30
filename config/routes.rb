Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'pages#index'
  
  devise_for :users
  
  get "/categories/:id", to: "units#categories", as: "categories"    

  resources :units

  resources :orders

  resources :userparams

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
