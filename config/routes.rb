DogParkFinder::Application.routes.draw do
  get 'search' => 'search#index'
  root to:'main#index'
end
