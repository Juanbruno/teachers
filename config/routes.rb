Rails.application.routes.draw do
  resources :students
  resources :cities
  root "home#index" 
  get 'home/index'
  devise_for :users


end
