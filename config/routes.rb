Rails.application.routes.draw do


  resources :phones
  devise_for :users
  root 'home#index'
end
