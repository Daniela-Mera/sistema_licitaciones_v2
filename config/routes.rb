Rails.application.routes.draw do
  resources :comunas
  resources :chileregions
  resources :estado_licitacions
  resources :tipo_entidads
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/comunas", to:"comunas#index"
  get "/chileregions", to:"chileregions#index"
  get "/estado_licitacions", to:"estado_licitacions#index"
  get "/tipo_entidads", to:"tipo_entidads#index"


end
