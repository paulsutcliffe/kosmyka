Kosmyka::Application.routes.draw do
  resources :questions


  devise_for :admins

  resources :projects

  get "services/index"

  get "company/index"

  resources :contacts

  root to: 'home#index'

  get "home/index"

 end
