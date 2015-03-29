Rails.application.routes.draw do
  
  root                'requests#index'
  get 'requests'  =>  'requests#index'
  get 'projects'  =>  'projects#index'
  get 'users'     =>  'users#index'

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
