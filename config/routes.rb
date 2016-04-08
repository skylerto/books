Rails.application.routes.draw do
  # HOME PAGE
  #root 'welcome#index'
  root 'books#index'
  resources :books
end
