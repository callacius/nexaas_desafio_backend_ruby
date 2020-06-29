Rails.application.routes.draw do
  resources :stock_items
  resources :stores
  resources :products#, only: [:show, :update, :create, :destroy]
end
