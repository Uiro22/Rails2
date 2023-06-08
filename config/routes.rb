Rails.application.routes.draw do
  devise_for :users
  #リダイレクトする場合devise_for :users, controllers: { registrations: 'registrations' }
  get 'home/index'
  
  #ワンちゃんいらん
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'


  resources :rooms
  resources :reservations
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
