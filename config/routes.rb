Rails.application.routes.draw do
  devise_for :users
  resources :comunas
  resources :chileregions
  resources :estado_licitacions
  resources :tipo_entidads
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  # Defines the root path route ("/")
  get "home/index"
  root to: "home#index"

  # root "articles#index"
  get "/comunas", to:"comunas#index"
  get "/chileregions", to:"chileregions#index"
  get "/estado_licitacions", to:"estado_licitacions#index"
  get "/tipo_entidads", to:"tipo_entidads#index"


end
