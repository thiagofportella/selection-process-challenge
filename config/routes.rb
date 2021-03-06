Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  devise_for :users, only: %i[ sessions registrations passwords ]
  resources :comments, only: %i[ create ]
  get 'tags/:tag', to: 'posts#index', as: :tag
  
  post 'posts/import', to: 'posts#import', as: :import_posts
end
