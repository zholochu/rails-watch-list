Rails.application.routes.draw do
  get '/bookmarks/new', to: 'bookmarks#new'

  # # LISTS
  # get '/lists', to: 'lists#index'
  # get '/lists/:id', to: 'lists#show'
  # get '/lists/new', to: 'lists#new'
  resources :lists, only: [:index, :show, :new, :create]
end
