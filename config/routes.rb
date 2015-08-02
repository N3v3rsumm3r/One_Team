Rails.application.routes.draw do
  
  get 'sessions/new'

  root                   'requests#index'
  get    'requests'  =>  'requests#index'
  get    'projects'  =>  'projects#index'
  get    'users'     =>  'users#index'
  get    'signup'    =>  'users#new'
  get    'login'     =>  'sessions#new'
  post   'login'     =>  'sessions#create'
  delete 'logout'    =>  'sessions#destroy'
  
  post 'users/:user_id/requests/:request_id/assignments/new' => 'assignments#create', as: :create_assignment
  delete 'assignment/:assignment_id' => 'assignments#destroy', as: :destroy_assignment



  resources :projects
  resources :needed_skills
  resources :requests do
      resources :responses
  end
  resources :desired_skills
  resources :current_skills
  resources :users
  resources :skills
  resources :groups
  resources :positions
  resources :locations
  resources :departments
end
