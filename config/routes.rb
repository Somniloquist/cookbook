Rails.application.routes.draw do
  root "static_pages#home"
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users
  resources :recipes, only: [:index, :show, :edit, :update, :delete]
end
