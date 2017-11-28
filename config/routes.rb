Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks
  #list tasks
  # get 'tasks', to: "tasks#index"
  # #view details of one task
  # get 'task/:id', to: "tasks#show", as: 'task'
  # # add task to todo list
  # get 'task/:id/add', to: "tasks#new"
  # post 'tasks/todo_list', to: "tasks#create"
  # #update task
  # get 'task/:id/edit', to: "tasks#edit"
  # patch 'task/:id', to: "tasks#update"
  # #delete task
  # delete 'task/:id', to: "tasks#destroy"
end
