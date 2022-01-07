Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Nach erstellung eines Routes den befehl benutzen: bin/rails g controller {Controllername} {alle route endpunkte}
  # Beispiel: bin/rails g controller CoursesController index create detroy update
  # GET, POST, DELETE
  resources :books, only: [:index, :create, :destroy]

  resources :courses, only: [:index, :create, :destroy, :update]

end
