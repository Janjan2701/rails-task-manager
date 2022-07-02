Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # CRUD
	# verb 'path', to: 'controller#action'

  # Read all tasks
  get 'tasks', to: 'tasks#index', as: 'tasks'

  # Create the task
  #   1. Display the form
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  #   2. Create the task
  post 'tasks', to: 'tasks#create'

  # Read one task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # Update the task
  #   1. Display the form
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  #   2. Update the task
  patch 'tasks/:id', to: 'tasks#update'

  # Delete the task
  delete 'tasks/:id', to: 'tasks#destroy'
end
