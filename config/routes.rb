Rails.application.routes.draw do
  resources :friendships
  resources :posts
  resources :comments
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
