Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks/new', to: 'tasks#new', as: :new
  resources :tasks, only: %i[index create update destroy]
  get 'tasks/:id', to: 'tasks#show'
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
end
