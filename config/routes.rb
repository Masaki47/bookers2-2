Rails.application.routes.draw do
  post 'books/new'
  get 'home/about' => 'homes#about'
  get 'home/index' => 'homes#index'

  devise_for :users
  root to: 'homes#top'
  root to: 'home#about'
  resources :books, only: [:edit, :create, :index, :show, :update, :destroy] do
  end
  resources :users, only: [:index, :show, :edit, :update] do
  end
end

