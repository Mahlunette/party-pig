Rails.application.routes.draw do
  root to: 'pages#home'
  get 'ui_kit', to: 'pages#ui_kit'
  resources :parties, only: [:new, :create, :show] do
    resources :buckets, only: [:create, :update]
  end
  # resources :buckets, only: [:create, :update] do
  resources :tasks, only: [:create, :update]
end
