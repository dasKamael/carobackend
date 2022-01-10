# README

resources :books, only: [:index, :create, :destroy]

Neue Routes aktualisieren
* bin/rails routes

Create Controller: bin/rails g controller {name} {REST Types}
 * bin/rails g controller CoursesController index create destroy update

Create Model: 
* rails g model Course name:string capacity:integer is_single:boolean

Datenbank migration
* bin/rails db:migrate


