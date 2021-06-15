Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks
  devise_for :users
  post 'update_task_status', to: 'tasks#update_task_status'
  get 'filter_task_day', to: 'tasks#filter_task_day'

  get 'task_activity', to: 'tasks#task_activity'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
