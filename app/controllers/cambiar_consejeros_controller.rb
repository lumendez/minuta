class CambiarConsejerosController < ApplicationController
  before_action :authenticate_user!
  before_action :cambiar_consejero, only: :create
  load_and_authorize_resource

  # GET /cambiar_consejeros
  # GET /cambiar_consejeros.json
  def index
    @cambiar_consejeros = CambiarConsejero.all
  end

  # GET /cambiar_consejeros/1
  # GET /cambiar_consejeros/1.json
  def show
  end

  # GET /cambiar_consejeros/new
  def new
    if current_user.sepi_programa.nil?
      redirect_to alumnos_path, alert: "Necesita pertenecer a un programa de posgrado para esta acción"
    else
      @cambiar_consejero = current_user.cambiar_consejeros.build
    end
  end

  # GET /cambiar_consejeros/1/edit
  def edit
  end

  # POST /cambiar_consejeros
  # POST /cambiar_consejeros.json
  def create
    @cambiar_consejero = current_user.cambiar_consejeros.build(cambiar_consejero_params)
    if @cambiar_consejero.save
      flash[:success] = "Su petición para cambiar consejeros fue creada!"
      redirect_to cambiar_consejeros_path
    else
      flash[:alert] = "Su petición para cambiar consejeros no pudo ser creada! Revise el formulario."
      render :ner
    end
  end

  # PATCH/PUT /cambiar_consejeros/1
  # PATCH/PUT /cambiar_consejeros/1.json
  def update
    respond_to do |format|
      if @cambiar_consejero.update(cambiar_consejero_params)
        format.html { redirect_to @cambiar_consejero, notice: 'Su petición para cambiar de consejero fue actualizada.' }
        format.json { render :show, status: :ok, location: @cambiar_consejero }
      else
        format.html { render :edit }
        format.json { render json: @cambiar_consejero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cambiar_consejeros/1
  # DELETE /cambiar_consejeros/1.json
  def destroy
    @cambiar_consejero.destroy
    respond_to do |format|
      format.html { redirect_to cambiar_consejeros_url, notice: 'Su petición para cambiar de consejero fue eliminada.' }
      format.json { head :no_content }
    end
  end

  def validar_consejero
    if @cambiar_consejero.update(validar_consejero_params)
      format.html { redirect_to @cambiar_consejero, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @cambiar_consejero }
    else
      format.html { render :edit }
      format.json { render json: @cambiar_consejero.errors, status: :unprocessable_entity }
    end
  end

  def validar_coordinador
    if @cambiar_consejero.update(validar_coordinador_params)
      format.html { redirect_to @cambiar_consejero, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @cambiar_consejero }
    else
      format.html { render :edit }
      format.json { render json: @cambiar_consejero.errors, status: :unprocessable_entity }
    end
  end

  def cambiar_estado
    if @cambiar_consejero.update(cambiar_estado_params)
      format.html { redirect_to @cambiar_consejero, notice: 'La petición ha cambiado de estado.' }
      format.json { render :show, status: :ok, location: @cambiar_consejero }
    else
      format.html { render :edit }
      format.json { render json: @cambiar_consejero.errors, status: :unprocessable_entity }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def cambiar_consejero_params
      params.require(:cambiar_consejero).permit(:anterior, :actual, :valida_consejero, :valida_coordinador, :estado)
    end

    def cambiar_consejero
      @cambiar_consejero = CambiarConsejero.new(cambiar_consejero_params)
    end

    def validar_consejero_params
      params.require(:cambiar_consejero).permit(:valida_consejero)
    end

    def validar_coordinador_params
      params.require(:cambiar_consejero).permit(:valida_coordinador)
    end

    def cambiar_estado_params
      params.require(:cambiar_consejero).permit(:estado)
    end
end
