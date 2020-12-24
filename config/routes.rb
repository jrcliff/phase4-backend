Rails.application.routes.draw do
  resources :friendships
  resources :posts
  resources :comments
  resources :users
end
