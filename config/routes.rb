Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  get "/tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new", as: :restaurant_create
  post "tasks", to: "tasks#create"  
  get "/tasks/:id", to: "tasks#show", as: :task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_restaurant
  patch "tasks/:id", to: "tasks#update"
  delete "tasks/:id", to: "tasks#destroy", as: :delete_task
end
