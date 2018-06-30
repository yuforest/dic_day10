Rails.application.routes.draw do

  get 'sessions/new'

  root to: 'blogs#index'
  resources :blogs
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
end
