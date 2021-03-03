Rails.application.routes.draw do



  root to: "home#index"

  resources :platos
  resources :menu_platos
  resources :ingredientes

  devise_for :clientes
  scope "/admin" do
    resources :menus
    resources :clientes
    resources :roles
    resources :grupoingredientes
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
