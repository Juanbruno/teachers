Rails.application.routes.draw do
  
  get 'tutoring/student'
  get 'tutoring/teacher'
  get 'tutoring/topic'
  get 'tutoring/when'
  get 'tutoring/where'
  resources :topics
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
