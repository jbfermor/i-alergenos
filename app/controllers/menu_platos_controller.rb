class MenuPlatosController < ApplicationController
  before_action :authenticate_cliente!
  load_and_authorize_resource

  def create
    plato_elegido = Plato.find(params[:plato_id])
    menu = Menu.find(params[:menu_id])
    @plato_menu = MenuPlato.new
    @plato_menu.menu = menu
    @plato_menu.plato = plato_elegido
    @plato_menu.save
    redirect_to menu_path(menu)
  end

  def destroy
    menu = Menu.find(params[:menu_id])
    @plato_menu = MenuPlato.find(params[:id])
    @plato_menu.destroy
    redirect_to menu_path(menu)
  end
end
