Rails.application.routes.draw do
  get 'index/index'
  devise_for :users
  resources :docentes
  resources :actividades
  resources :actividades_tipo
  resources :actividades_alumnos
  resources :carreras
  resources :alumnos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "index#index"
end