class ExamenGraduadosController < ApplicationController
  before_action :authenticate_user!
  before_action :examen_graduado, only: :create
  load_and_authorize_resource

  # GET /examen_graduados
  # GET /examen_graduados.json
  def index
    @examen_graduados = ExamenGraduado.all
  end

  # GET /examen_graduados/1
  # GET /examen_graduados/1.json
  def show
  end

  # GET /examen_graduados/new
  def new
    @examen_graduado = current_user.examen_graduados.build
  end

  # GET /examen_graduados/1/edit
  def edit
  end

  # POST /examen_graduados
  # POST /examen_graduados.json
  def create
    @examen_graduado = current_user.examen_graduados.build(examen_graduado_params)

    if @examen_graduado.save
      flash[:success] = "Su petición para solicitar su examen de grado fue creada!"
      redirect_to examen_graduados_path
    else
      flash[:alert] = "Su petición para solicitar su examen de grado no pudo ser creada!. Revise el formulario."
      render :new
    end
  end

  # PATCH/PUT /examen_graduados/1
  # PATCH/PUT /examen_graduados/1.json
  def update
    respond_to do |format|
      if @examen_graduado.update(examen_graduado_params)
        format.html { redirect_to @examen_graduado, notice: 'Su petición para solicitar su examen de grado se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @examen_graduado }
      else
        format.html { render :edit }
        format.json { render json: @examen_graduado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /examen_graduados/1
  # DELETE /examen_graduados/1.json
  def destroy
    @examen_graduado.destroy
    respond_to do |format|
      format.html { redirect_to examen_graduados_url, notice: 'Su petición para solicitar su examen de grado se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  def validar_consejero
    if @examen_graduado.update(validar_consejero_params)
      format.html { redirect_to @examen_graduado, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @examen_graduado }
    else
      format.html { render :edit }
      format.json { render json: @examen_graduado.errors, status: :unprocessable_entity }
    end
  end

  def validar_coordinador
    if @examen_graduado.update(validar_coordinador_params)
      format.html { redirect_to @examen_graduado, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @examen_graduado }
    else
      format.html { render :edit }
      format.json { render json: @examen_graduado.errors, status: :unprocessable_entity }
    end
  end

  def cambiar_estado
    if @examen_graduado.update(cambiar_estado_params)
      format.html { redirect_to @examen_graduado, notice: 'La petición ha cambiado de estado.' }
      format.json { render :show, status: :ok, location: @examen_graduado }
    else
      format.html { render :edit }
      format.json { render json: @examen_graduado.errors, status: :unprocessable_entity }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def examen_graduado_params
      params.require(:examen_graduado).permit(:tipo, :valida_consejero, :valida_coordinador, :estado)
    end

    def examen_graduado
      @examen_graduado = ExamenGraduado.new(examen_graduado_params)
    end

    def validar_consejero_params
      params.require(:examen_graduado).permit(:valida_consejero)
    end

    def validar_coordinador_params
      params.require(:examen_graduado).permit(:valida_coordinador)
    end

    def cambiar_estado_params
      params.require(:examen_graduado).permit(:estado)
    end
end
