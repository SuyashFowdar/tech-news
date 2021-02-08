Rails.application.routes.draw do
  get 'users/sign_up'
  get 'users/sign_in'
  post 'users/create_session'
  get 'users/destroy_session'
  get 'categories/vote'
  resources :categories, only: [:index, :show]
  resources :users, only: [:new, :create]
  resources :articles, only: [:new, :create]
  root 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
