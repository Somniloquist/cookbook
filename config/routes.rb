Rails.application.routes.draw do
  root "static_pages#home"
  devise_for :users
  resources :recipes
  resources :users, only: [:index, :show, :edit, :update]
end
