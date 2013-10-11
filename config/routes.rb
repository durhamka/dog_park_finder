DogParkFinder::Application.routes.draw do
  #devise_for :admins
  #devise_for :users

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :user_parks
  resources :votes

  root to:'searches#new'

  resource :search, only: [:show]
end
