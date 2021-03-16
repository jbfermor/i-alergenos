class PlatosController < ApplicationController
  before_action :authenticate_cliente!
  load_and_authorize_resource

  # GET /platos or /platos.json
  def index
    if current_cliente.suscriptor == 0
      @platos = Plato.where cliente_id: current_cliente
    else
      @platos = Plato.all
    end
  end

  # GET /platos/1 or /platos/1.json
  def show
  end

  # GET /platos/new
  def new

  end

  # GET /platos/1/edit
  def edit
  end

  # POST /platos or /platos.json
  def create
    @plato.cliente = current_cliente
    respond_to do |format|
      if @plato.save
        format.html { redirect_to @plato, notice: "Plato was successfully created." }
        format.json { render :show, status: :created, location: @plato }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platos/1 or /platos/1.json
  def update
    respond_to do |format|
      if @plato.update(plato_params)
        format.html { redirect_to @plato, notice: "Plato was successfully updated." }
        format.json { render :show, status: :ok, location: @plato }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platos/1 or /platos/1.json
  def destroy
    @plato.destroy
    respond_to do |format|
      format.html { redirect_to platos_url, notice: "Plato was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a list of trusted parameters through.
    def plato_params
      params.require(:plato).permit(:nombre, :cliente_id, alimento_ids: [], alergeno_ids: [])
    end
end
