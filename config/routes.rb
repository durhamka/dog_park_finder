DogParkFinder::Application.routes.draw do
  root :to => 'main#index'

  get "/search" => "search#index"

end
