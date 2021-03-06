Rails.application.routes.draw do
  resources :messages, :only => [:create, :index, :show, :new]
  devise_for :users
  devise_for :admins
  root 'pages#home'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
