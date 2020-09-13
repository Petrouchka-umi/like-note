Rails.application.routes.draw do
  devise_for :users
  root to: 'messages#index'
  resources :messages, only: [:index, :new, :create]
  resources :users, only: :show
  resources :moods, only: :index
end
