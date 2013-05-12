DogParkFinder::Application.routes.draw do
  get '*anything' => 'main#index'
  root to:'main#index'
end
