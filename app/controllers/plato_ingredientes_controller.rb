class PlatoIngredientesController < ApplicationController
  def create
    ingrediente = Ingrediente.find(params[:ingrediente_id])
    plato = Plato.find(params[:plato_id])
    @pi = PlatoIngrediente.new
    @pi.ingrediente = ingrediente
    @pi.plato = plato
    @pi.save
    redirect_to plato_path(plato)
  end

  def destroy
    plato = Plato.find(params[:plato_id])
    @pi = PlatoIngrediente.find(params[:id])
    @pi.destroy
    redirect_to plato_path(plato)
  end
end
