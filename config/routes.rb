Rails.application.routes.draw do
  resources :comments

  resources :posts

  resources :blogs

  resources :users
end
