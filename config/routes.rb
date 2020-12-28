Rails.application.routes.draw do
  devise_for :users
  resources :friendships
  resources :posts
  resources :comments
  resources :users
end
