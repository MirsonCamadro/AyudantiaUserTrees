Rails.application.routes.draw do
  resources :treeweathers
  resources :weathers
  post 'posts/:id', to: "posts#create", as: "post"
  resources :trees
  devise_for :users
  resources :users, only: [:show]
  post 'contributions/:id', to: 'contributions#create', as: 'create_contribution'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
