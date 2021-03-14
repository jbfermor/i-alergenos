Rails.application.routes.draw do

  root to: "home#index"

  resources :platos
  resources :menu_platos
  resources :ingredientes
  resources :plato_ingredientes


  devise_for :clientes
  scope "/admin" do
    resources :menus
    resources :clientes do
      member do
        patch "suscribir", to: "clientes#suscribir"
        patch "eliminar_suscripcion", to: "clientes#eliminar_suscripcion"
      end
    end
    resources :roles
    resources :grupoingredientes
    resources :alergenos
    resources :ingrediente_alergenos
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
