Rails.application.routes.draw do
  devise_for :users
  
  resources :users, only: [:new, :index, :show, :edit, :update]
  resources :books, only: [:new, :index, :show, :create, :destroy, :edit, :update]
  resources :postimages, only: [:new, :index, :show]
  root to: 'homes#top'
  get 'home/about' => 'home#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
