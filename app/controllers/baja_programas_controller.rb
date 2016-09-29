class BajaProgramasController < ApplicationController
  before_action :authenticate_user!
  before_action :baja_programa, only: :create
  load_and_authorize_resource

  # GET /baja_programas
  # GET /baja_programas.json
  def index
    @baja_programas = BajaPrograma.all
  end

  # GET /baja_programas/1
  # GET /baja_programas/1.json
  def show
  end

  # GET /baja_programas/new
  def new
    @baja_programa = current_user.baja_programas.build
  end

  # GET /baja_programas/1/edit
  def edit
  end

  # POST /baja_programas
  # POST /baja_programas.json
  def create
    @baja_programa = current_user.baja_programas.build(baja_programa_params)

    if @baja_programa.save
      flash[:success] = "Su petición para darse de baja de un programa ha sido creada!"
      redirect_to baja_programas_path
    else
      flash[:alert] = "Su petición para darse de baja de un programa no pudo ser creada!  Revise el formulario."
      render :new
    end
  end

  # PATCH/PUT /baja_programas/1
  # PATCH/PUT /baja_programas/1.json
  def update
    respond_to do |format|
      if @baja_programa.update(baja_programa_params)
        format.html { redirect_to @baja_programa, notice: 'Baja programa was successfully updated.' }
        format.json { render :show, status: :ok, location: @baja_programa }
      else
        format.html { render :edit }
        format.json { render json: @baja_programa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baja_programas/1
  # DELETE /baja_programas/1.json
  def destroy
    @baja_programa.destroy
    respond_to do |format|
      format.html { redirect_to baja_programas_url, notice: 'Baja programa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def validar_consejero
    if @baja_programa.update(validar_consejero_params)
      format.html { redirect_to @baja_programa, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @baja_programa }
    else
      format.html { render :edit }
      format.json { render json: @baja_programa.errors, status: :unprocessable_entity }
    end
  end

  def validar_coordinador
    if @baja_programa.update(validar_coordinador_params)
      format.html { redirect_to @baja_programa, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @baja_programa }
    else
      format.html { render :edit }
      format.json { render json: @baja_programa.errors, status: :unprocessable_entity }
    end
  end

  def cambiar_estado
    if @baja_programa.update(cambiar_estado_params)
      format.html { redirect_to @baja_programa, notice: 'La petición ha cambiado de estado.' }
      format.json { render :show, status: :ok, location: @baja_programa }
    else
      format.html { render :edit }
      format.json { render json: @baja_programa.errors, status: :unprocessable_entity }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def baja_programa_params
      params.require(:baja_programa).permit(:nombre, :valida_consejero, :valida_coordinador, :estado)
    end

    def baja_programa
      @baja_programa = BajaPrograma.new(baja_programa_params)
    end

    def validar_consejero_params
      params.require(:baja_programa).permit(:valida_consejero)
    end

    def validar_coordinador_params
      params.require(:baja_programa).permit(:valida_coordinador)
    end

    def cambiar_estado_params
      params.require(:baja_programa).permit(:estado)
    end

end
