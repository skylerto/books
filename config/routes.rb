Rails.application.routes.draw do
  # HOME PAGE
  root 'welcome#index'

  resources :books
end
