Rails.application.routes.draw do
  get 'tasks/index', to: 'tasks#index'
  post 'tasks/create', to: 'tasks#create'
  get 'tasks/new', to: 'tasks#new'

end
