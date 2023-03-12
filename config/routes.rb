Rails.application.routes.draw do
  get 'rooms/index' ,to: 'rooms#index'
  get 'users/show' ,to:'users#show'
  resources :rooms
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
