class ClientesController < ApplicationController

  before_action :authenticate_cliente!
  load_and_authorize_resource


  # GET /clientes or /clientes.json
  def index
    #@clientes = Cliente.all
    @pagy, @clientes = pagy(Cliente.all)
  end

  # GET /clientes/1 or /clientes/1.json
  def show
    @lista_menus = @cliente.menus
    @lista_platos = @cliente.platos
    @lista_ingredientes = @cliente.ingredientes
  end

  # GET /clientes/new
  def new
  end

  # GET /clientes/1/edit
  def edit
  end

  # POST /clientes or /clientes.json
  def create

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to @cliente, notice: "Cliente was successfully created." }
        format.json { render :show, status: :created, location: @cliente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientes/1 or /clientes/1.json
  def update
    if cliente_params[:password].blank?
      cliente_params.delete(:password)
      cliente_params.delete(:password_confirmation)
    end

    successfully_updated = if needs_password?(@cliente, cliente_params)
                             @cliente.update(cliente_params)
                           else
                             @cliente.update_without_password(cliente_params)
                           end

    if successfully_updated
      redirect_to @cliente, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end


  # DELETE /clientes/1 or /clientes/1.json
  def destroy
    @cliente.destroy
    respond_to do |format|
      format.html { redirect_to clientes_url, notice: "Cliente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def suscripcion

  end

  def suscribir
    @cliente = @current_cliente
    if @cliente.suscriptor == 0
      @cliente.update_column(:suscriptor, 1)
      redirect_to "/clientes/edit", notice: "Tu suscripción ahora está activa"
    end
  end

  def eliminar_suscripcion
    @cliente = @current_cliente
    if @cliente.suscriptor == 1
      @cliente.update_column(:suscriptor, 0)
      redirect_to "/clientes/edit", notice: "Tu suscripción se ha desactivado"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a list of trusted parameters through.
    def cliente_params
      params.require(:cliente).permit(:nombre, :cifNif, :direccion, :localidad, :cp, :provincia, :telefono, :role_id, :email, :password, :password_confirmation, :suscriptor)
    end

    def needs_password?(_user, params)
      params[:password].present?
    end

    def current_cliente
      @cliente
    end


end
