Rails.application.routes.draw do
  resources :messages
  resources :users_rooms
  resources :rooms
  resources :users
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
