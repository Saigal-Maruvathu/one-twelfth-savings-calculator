Rails.application.routes.draw do

  root 'posts#index'
  #
  # get 'posts/index'
  # get 'posts/create'
  # get 'posts/show'
  # get 'posts/edit'
  # get 'posts/destroy'


  devise_for :users

  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
