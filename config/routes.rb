Rails.application.routes.draw do
  get 'carts/show'

  devise_for :users
  # HOME PAGE
  #root 'welcome#index'
  root 'books#index'
  resources :books

  resource :cart, only: [:show] do
    put 'add/:book_id', to: 'carts#add', as: :add_to
    put 'remove/:book_id', to: 'carts#remove', as: :remove_from
  end
end
