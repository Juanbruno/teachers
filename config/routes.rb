Rails.application.routes.draw do
  
  resources :types
  root "home#index" 
  get 'home/index'

  devise_for :users, controllers: {
  	registrations: "registrations"
  }

  resources :students
  resources :teachers
  resources :cities
  resources :photos


end
