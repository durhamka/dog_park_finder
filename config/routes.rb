DogParkFinder::Application.routes.draw do
  root to:'searches#new'

  resource :search, only: [:show]
end
