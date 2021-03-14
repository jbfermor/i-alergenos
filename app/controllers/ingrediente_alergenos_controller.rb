class IngredienteAlergenosController < ApplicationController
  before_action :authenticate_cliente!

  def create
    ingrediente = Ingrediente.find(params[:ingrediente_id])
    alergeno = Alergeno.find(params[:alergeno_id])
    @pi = PlatoIngrediente.new
    @pi.ingrediente = ingrediente
    @pi.alergeno = alergeno
    @pi.save
    redirect_to plato_path(plato)
  end

  def destroy
    a = Alergeno.find(params[:alergeno_id])
    i = Ingrediente.find(params[:ingrediente_id])
    @ia = IngredienteAlergeno.find_by(ingrediente_id: i, alergeno_id: a)
    @ia.destroy
    redirect_to ingrediente_path(i)

  end
end
