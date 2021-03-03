Rails.application.routes.draw do



  get 'plato_ingredientes/create'
  get 'plato_ingredientes/destroy'
  root to: "home#index"

  resources :platos
  resources :menu_platos
  resources :ingredientes
  resources :plato_ingredientes

  devise_for :clientes
  scope "/admin" do
    resources :menus
    resources :clientes
    resources :roles
    resources :grupoingredientes
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
