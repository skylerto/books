Rails.application.routes.draw do
  devise_for :users
  # HOME PAGE
  #root 'welcome#index'
  root 'books#index'
  resources :books
end
