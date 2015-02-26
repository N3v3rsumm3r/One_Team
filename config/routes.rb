Rails.application.routes.draw do
  
  root             'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'users#new'

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
