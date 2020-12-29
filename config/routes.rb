Rails.application.routes.draw do
  devise_for :users
  resources :friendships
  resources :posts
  resources :comments
  resources :users
  get '/userposts', to: 'users#user_post'
end
