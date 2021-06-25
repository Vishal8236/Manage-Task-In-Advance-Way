Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks
  devise_for :users
  get 'update_task_status', to: 'tasks#update_task_status'
  get 'filter_task_day', to: 'tasks#filter_task_day'

  get 'task_activity', to: 'task_activity#index', as: 'task_activity'

  get 'task_update', to: 'tasks#task_update'

  get 'show_task_details', to: 'tasks#show_task_details'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
