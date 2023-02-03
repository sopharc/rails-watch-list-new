Rails.application.routes.draw do
  get 'lists/new'
  get 'lists/create'

  root to: "lists#index"
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy
  get 'delete_list/:id', to: 'lists#destroy', as: 'delete_list'
  get 'delete_bookmarks/:id', to: 'bookmarks#destroy', as: 'delete_bookmark'
end
