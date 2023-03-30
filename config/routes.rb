Rails.application.routes.draw do
  get 'homes/index' ,to: 'homes#index'
  get 'users/profile_edit' ,to: 'users#profile_edit'
  patch 'users/profile_update' ,to: 'users#profile_update'
  get 'users/account' ,to: 'users#account'
  get 'users/profile' ,to: 'users#profile'
  get 'rooms/search' ,to: 'rooms#search'

  resources :rooms
  resources :homes, :only => :index 
  resources :reservations do
    member do
      post 'confirm' ,to: 'reservations#confirm'
    end
  end
  devise_for :users, controllers: { registrations: 'users/registrations'}
   
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
