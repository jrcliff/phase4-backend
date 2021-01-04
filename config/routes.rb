Rails.application.routes.draw do
  devise_for :users
  resources :friendships
  resources :posts
  resources :comments
  resources :users
  get '/userposts', to: 'users#user_post'
  get '/postcomments', to: 'posts#post_comments'
  post '/login', to: 'users#login'
end
