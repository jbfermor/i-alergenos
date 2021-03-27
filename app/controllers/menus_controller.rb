class MenusController < ApplicationController
  before_action :authenticate_cliente!
  load_and_authorize_resource

  # GET /menus or /menus.json
  def index
    if current_cliente.admin?
      @menus = Menu.all
    else
      @menus = Menu.where cliente_id: current_cliente
    end
  end

  # GET /menus/1 or /menus/1.json
  def show
    @platos_m = Plato.all
    @platos_m_s = Plato.where cliente_id: current_cliente
  end

  # GET /menus/new
  def new
  end

  # GET /menus/1/edit
  def edit
  end

  # POST /menus or /menus.json
  def create
    @menu.cliente_id = current_cliente.id

    respond_to do |format|
      if @menu.save
        format.html { redirect_to @menu, notice: "Menu creado" }
        format.json { render :show, status: :created, location: @menu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menus/1 or /menus/1.json
  def update
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to @menu, notice: "Menu actualizado" }
        format.json { render :show, status: :ok, location: @menu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1 or /menus/1.json
  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menus_url, notice: "Menu eliminado" }
      format.json { head :no_content }
    end
  end

  def add_platos
    @platos = @menu.platos
  end

  def to_pdf_images
    to_pdf(0)
  end

  def to_pdf_text
    to_pdf(1)
  end

  def to_pdf_leyenda
    to_pdf(2)
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Only allow a list of trusted parameters through.
    def menu_params
      params.require(:menu).permit(:nombre, :cliente_id)
    end

    def to_pdf (plantilla)
      @menu = Menu.find(params[:menu_id])
      respond_to do |format|
        format.html
        format.pdf do
          pdf = MenuPdf.new(@menu, plantilla)
          send_data pdf.render,
            filename: "#{@menu.nombre}.pdf",
            type: "application/pdf",
            disposition: "inline"
        end
      end
    end

end
