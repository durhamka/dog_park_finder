DogParkFinder::Application.routes.draw do
  #devise_for :admins
  #devise_for :users

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  root to: 'searches#new'

  resources :user_parks
  resources :votes

  resource :search, only: [:show]
end
