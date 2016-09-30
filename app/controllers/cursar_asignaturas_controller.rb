class CursarAsignaturasController < ApplicationController
  before_action :authenticate_user!
  before_action :cursar_asignatura, only: :create
  load_and_authorize_resource

  # GET /cursar_asignaturas
  # GET /cursar_asignaturas.json
  def index
    @cursar_asignaturas = CursarAsignatura.all
  end

  # GET /cursar_asignaturas/1
  # GET /cursar_asignaturas/1.json
  def show
  end

  # GET /cursar_asignaturas/new
  def new
    @cursar_asignatura = current_user.cursar_asignaturas.build
  end

  # GET /cursar_asignaturas/1/edit
  def edit
  end

  # POST /cursar_asignaturas
  # POST /cursar_asignaturas.json
  def create
    @cursar_asignatura = current_user.cursar_asignaturas.build(cursar_asignatura_params)

    if @cursar_asignatura.save
      flash[:success] = "Su solicitud para cursar asignaturas en otra unidad académica ha sido creada!"
      redirect_to cursar_asignaturas_path
    else
      flash[:alert] = "Su solicitud para cursar asignaturas en otra unidad académica no pudos ser creada! Revise el formulario."
      render :new
    end
  end

  # PATCH/PUT /cursar_asignaturas/1
  # PATCH/PUT /cursar_asignaturas/1.json
  def update
    respond_to do |format|
      if @cursar_asignatura.update(cursar_asignatura_params)
        format.html { redirect_to @cursar_asignatura, notice: 'Cursar asignatura was successfully updated.' }
        format.json { render :show, status: :ok, location: @cursar_asignatura }
      else
        format.html { render :edit }
        format.json { render json: @cursar_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cursar_asignaturas/1
  # DELETE /cursar_asignaturas/1.json
  def destroy
    @cursar_asignatura.destroy
    respond_to do |format|
      format.html { redirect_to cursar_asignaturas_url, notice: 'Cursar asignatura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def validar_consejero
    if @cursar_asignatura.update(validar_consejero_params)
      format.html { redirect_to @cursar_asignatura, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @cursar_asignatura }
    else
      format.html { render :edit }
      format.json { render json: @cursar_asignatura.errors, status: :unprocessable_entity }
    end
  end

  def validar_coordinador
    if @cursar_asignatura.update(validar_coordinador_params)
      format.html { redirect_to @cursar_asignatura, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @cursar_asignatura }
    else
      format.html { render :edit }
      format.json { render json: @cursar_asignatura.errors, status: :unprocessable_entity }
    end
  end

  def cambiar_estado
    if @cursar_asignatura.update(cambiar_estado_params)
      format.html { redirect_to @cursar_asignatura, notice: 'La petición ha cambiado de estado.' }
      format.json { render :show, status: :ok, location: @cursar_asignatura }
    else
      format.html { render :edit }
      format.json { render json: @cursar_asignatura.errors, status: :unprocessable_entity }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def cursar_asignatura_params
      params.require(:cursar_asignatura).permit(:nombre, :clave, :unidad, :valida_consejero, :valida_coordinador, :estado)
    end

    def cursar_asignatura
      @cursar_asignatura = CursarAsignatura.new(cursar_asignatura_params)
    end

    def validar_consejero_params
      params.require(:cursar_asignatura).permit(:valida_consejero)
    end

    def validar_coordinador_params
      params.require(:cursar_asignatura).permit(:valida_coordinador)
    end

    def cambiar_estado_params
      params.require(:cursar_asignatura).permit(:estado)
    end
end
