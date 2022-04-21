Rails.application.routes.draw do
  get 'books/new'
  get 'books/index'
  get 'books/show'
  devise_for :users
  root to: "homes#top", as: "top"
  get "homes/about" => "homes#about", as: "about"
  resource :books, only: [:new, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
