class CambiarAsignaturasController < ApplicationController
  before_action :authenticate_user!
  before_action :cambiar_asignatura, only: :create
  load_and_authorize_resource

  # GET /cambiar_asignaturas
  # GET /cambiar_asignaturas.json
  def index
    @cambiar_asignaturas = CambiarAsignatura.all
  end

  # GET /cambiar_asignaturas/1
  # GET /cambiar_asignaturas/1.json
  def show
  end

  # GET /cambiar_asignaturas/new
  def new
    if current_user.sepi_programa.nil?
      redirect_to alumnos_path, alert: "Necesita pertenecer a un programa de posgrado para esta acción"
    else
      @cambiar_asignatura = current_user.cambiar_asignaturas.build
    end
  end

  # GET /cambiar_asignaturas/1/edit
  def edit
  end

  # POST /cambiar_asignaturas
  # POST /cambiar_asignaturas.json
  def create
    @cambiar_asignatura = current_user.cambiar_asignaturas.build(cambiar_asignatura_params)
    if @cambiar_asignatura.save
      flash[:success] = "Su petición para cambiar asignaturas ha sido creada!"
      redirect_to cambiar_asignaturas_path
    else
      flash[:alert] = "Su petición para cambiar asignaturas no pudo ser creada! Revise el formulario."
      render :new
    end
  end

  # PATCH/PUT /cambiar_asignaturas/1
  # PATCH/PUT /cambiar_asignaturas/1.json
  def update
    respond_to do |format|
      if @cambiar_asignatura.update(cambiar_asignatura_params)
        format.html { redirect_to @cambiar_asignatura, notice: 'La petición para cambiar asignaturas fue actualizada.' }
        format.json { render :show, status: :ok, location: @cambiar_asignatura }
      else
        format.html { render :edit }
        format.json { render json: @cambiar_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cambiar_asignaturas/1
  # DELETE /cambiar_asignaturas/1.json
  def destroy
    @cambiar_asignatura.destroy
    respond_to do |format|
      format.html { redirect_to cambiar_asignaturas_url, notice: 'La petición para cambiar asignaturas fue eliminada.' }
      format.json { head :no_content }
    end
  end

  def validar_consejero
    if @cambiar_asignatura.update(validar_consejero_params)
      format.html { redirect_to @cambiar_asignatura, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @cambiar_asignatura }
    else
      format.html { render :edit }
      format.json { render json: @cambiar_asignatura.errors, status: :unprocessable_entity }
    end
  end

  def validar_coordinador
    if @cambiar_asignatura.update(validar_coordinador_params)
      format.html { redirect_to @cambiar_asignatura, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @cambiar_asignatura }
    else
      format.html { render :edit }
      format.json { render json: @cambiar_asignatura.errors, status: :unprocessable_entity }
    end
  end

  def cambiar_estado
    if @cambiar_asignatura.update(cambiar_estado_params)
      format.html { redirect_to @cambiar_asignatura, notice: 'La petición ha cambiado de estado.' }
      format.json { render :show, status: :ok, location: @cambiar_asignatura }
    else
      format.html { render :edit }
      format.json { render json: @cambiar_asignatura.errors, status: :unprocessable_entity }
    end
  end


  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def cambiar_asignatura_params
      params.require(:cambiar_asignatura).permit(:anterior, :actual, :clave_anterior, :clave_actual, :valida_consejero, :valida_coordinador, :estado)
    end

    def cambiar_asignatura
      @cambiar_asignatura = CambiarAsignatura.new(cambiar_asignatura_params)
    end

    def validar_consejero_params
      params.require(:cambiar_asignatura).permit(:valida_consejero)
    end

    def validar_coordinador_params
      params.require(:cambiar_asignatura).permit(:valida_coordinador)
    end

    def cambiar_estado_params
      params.require(:cambiar_asignatura).permit(:estado)
    end
end
