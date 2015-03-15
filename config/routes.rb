Rails.application.routes.draw do
  
  root               'static_pages#dispatch'
  get 'request'  =>  'requests#index'
  get 'project'  =>  'projects#index'
  get 'user'     =>  'users#index'

  resources :responses
  resources :projects
  resources :needed_skills
  resources :requests
  resources :desired_skills
  resources :current_skills
  resources :users
  resources :skills
  resources :groups
  resources :positions
  resources :locations
  resources :departments
end
