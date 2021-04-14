Rails.application.routes.draw do
  devise_for :users
  # get 'prototypes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "prototypes#index"
  resources :prototypes, only: [:new, :create, :index, :show, :edit, :destroy, :update,] do
    resources :comments, only: :create
  end
  #resources :comment,only: :show
  resources :users, only: :show
end
