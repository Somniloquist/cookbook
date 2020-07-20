Rails.application.routes.draw do
  root "static_pages#home"
  devise_for :users
  resources :users
  resources :recipes, only: [:index, :show, :edit, :update, :delete]
end
