Rails.application.routes.draw do
  get 'wall/index'

  # get 'comments/index'
  #
  # get 'comments/show'
  #
  # post '/comments', to: 'comments#create'
  resources :comments
  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
