Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'users' => 'users#index'
  get 'users/:id' => 'users#show', as: 'user'
  get 'users/:id/edit' => 'users#edit', as: 'edit_user'
  get 'books' => 'books#index'
  post 'books' => 'books#create' 
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
