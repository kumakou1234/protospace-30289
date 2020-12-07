Rails.application.routes.draw do
  devise_for :users
  #  get 'protospaces/index'
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, only: :create
  end
  resources :users, only: :show
  # patch 'protospaces/:id', to: 'protospaces#update'
end
