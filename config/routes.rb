DogParkFinder::Application.routes.draw do
  get 'search' => 'search#index'
  # get '/parks/:id' => 'parks#show'
# resources :parks, only: 'show'
  root to:'main#index'
end
