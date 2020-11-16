Rails.application.routes.draw do
  root "static_pages#home"
  get "favorites", to: "favorites#index"
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users do
    resources :favorites, only: [:create, :delete]
  end
  resources :recipes, only: [:index, :show, :edit, :update, :delete]
end
