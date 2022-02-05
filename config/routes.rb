Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'users' => 'users#index'
  get 'users/:id' => 'users#show'
  get 'users/:id/edit' => 'users#edit'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show'
  get 'books/:id/edit' => 'books#edit'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
