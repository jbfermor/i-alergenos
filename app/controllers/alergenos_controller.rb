class AlergenosController < ApplicationController
  before_action :authenticate_cliente!
  load_and_authorize_resource

  # GET /alergenos or /alergenos.json
  def index
    @alergenos = Alergeno.all
  end

  # GET /alergenos/1 or /alergenos/1.json
  def show
  end

  # GET /alergenos/new
  def new
  end

  # GET /alergenos/1/edit
  def edit
  end

  # POST /alergenos or /alergenos.json
  def create

    respond_to do |format|
      if @alergeno.save
        format.html { redirect_to @alergeno, notice: "Alergeno was successfully created." }
        format.json { render :show, status: :created, location: @alergeno }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @alergeno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alergenos/1 or /alergenos/1.json
  def update
    respond_to do |format|
      if @alergeno.update(alergeno_params)
        format.html { redirect_to @alergeno, notice: "Alergeno was successfully updated." }
        format.json { render :show, status: :ok, location: @alergeno }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @alergeno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alergenos/1 or /alergenos/1.json
  def destroy
    @alergeno.destroy
    respond_to do |format|
      format.html { redirect_to alergenos_url, notice: "Alergeno was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a list of trusted parameters through.
    def alergeno_params
      params.require(:alergeno).permit(:nombre, :img)
    end
end
