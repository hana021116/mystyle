Rails.application.routes.draw do
  resources :posts
  devise_for :users
  resources :users, only: [:show]
  resources :visuals do
    resources :likes, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  get 'visuals/new' => 'visuals#new'
  get 'visuals/:visual_id/likes' => 'likes#create'
  get 'visuals/:visual_id/likes/:id' => 'likes#destroy'
  root 'visuals#index'
  end