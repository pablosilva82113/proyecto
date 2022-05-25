Rails.application.routes.draw do
  resources :colonias
  resources :estados
  resources :municipios
  resources :especialidades
  resources :direcciones_tipos
  resources :direcciones
  resources :actividades
  get 'index/index'
  devise_for :users
  resources :docentes
  resources :actividades_tipo
  resources :actividades_alumnos
  resources :carreras
  resources :alumnos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "index#index"
end
