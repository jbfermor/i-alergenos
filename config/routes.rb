Rails.application.routes.draw do

  root to: "home#index"

  resources :menus
  resources :platos
  resources :menu_platos
  resources :grupoingredientes
  resources :ingredientes
  resources :ingrediente_alergenos
  resources :plato_ingredientes

  devise_for :clientes
  resources :clientes do
    get "/suscripcion/", to: "clientes#suscripcion"
    patch "/suscribirse/", to: "clientes#suscribir"
    patch "/eliminar_suscripcion/", to: "clientes#eliminar_suscripcion"
  end
  resources :roles
  resources :alergenos

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
