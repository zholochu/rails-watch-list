Rails.application.routes.draw do
  get '/bookmarks/new', to: 'bookmarks#new'

  get '/lists', to: 'lists#index'
end
