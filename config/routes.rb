Rails.application.routes.draw do

  root to: "home#index"

  resources :platos
  resources :menu_platos

  devise_for :clientes
  scope "/admin" do
    resources :menus
    resources :clientes
    resources :roles
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
