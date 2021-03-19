class GrupoingredientesController < ApplicationController
  before_action :authenticate_cliente!
  load_and_authorize_resource

  # GET /grupoingredientes or /grupoingredientes.json
  def index
    @grupoingredientes = Grupoingrediente.all
  end

  # GET /grupoingredientes/1 or /grupoingredientes/1.json
  def show
  end

  # GET /grupoingredientes/new
  def new

  end

  # GET /grupoingredientes/1/edit
  def edit
  end

  # POST /grupoingredientes or /grupoingredientes.json
  def create

    respond_to do |format|
      if @grupoingrediente.save
        format.html { redirect_to @grupoingrediente, notice: "Grupoingrediente was successfully created." }
        format.json { render :show, status: :created, location: @grupoingrediente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grupoingrediente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupoingredientes/1 or /grupoingredientes/1.json
  def update
    respond_to do |format|
      if @grupoingrediente.update(grupoingrediente_params)
        format.html { redirect_to @grupoingrediente, notice: "Grupoingrediente was successfully updated." }
        format.json { render :show, status: :ok, location: @grupoingrediente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @grupoingrediente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupoingredientes/1 or /grupoingredientes/1.json
  def destroy
    @grupoingrediente.destroy
    respond_to do |format|
      format.html { redirect_to grupoingredientes_url, notice: "Grupoingrediente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a list of trusted parameters through.
    def grupoingrediente_params
      params.require(:grupoingrediente).permit(:nombre, :id_cliente)
    end
end
