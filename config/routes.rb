Rails.application.routes.draw do

  get 'sessions/new'

  root to: 'blogs#index'
  resources :blogs
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  get '/sign_in', to: 'sessions#new'
  get 'mypage', to: 'users#show'
  get 'sign_up', to: 'users#new'
end
