class DirectorTesisRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :director_tesis_registro, only: :create
  load_and_authorize_resource

  # GET /director_tesis_registros
  # GET /director_tesis_registros.json
  def index
    @director_tesis_registros = DirectorTesisRegistro.all
  end

  # GET /director_tesis_registros/1
  # GET /director_tesis_registros/1.json
  def show
  end

  # GET /director_tesis_registros/new
  def new
    if current_user.sepi_programa.nil?
      redirect_to alumnos_path, alert: "Necesita pertenecer a un programa de posgrado para esta acción"
    else
      @director_tesis_registro = current_user.director_tesis_registros.build
    end
  end

  # GET /director_tesis_registros/1/edit
  def edit
  end

  # POST /director_tesis_registros
  # POST /director_tesis_registros.json
  def create
    @director_tesis_registro = current_user.director_tesis_registros.build(director_tesis_registro_params)

    if @director_tesis_registro.save
      flash[:success] = "Su petición de registro de director de tesis ha sido creado!"
      if current_user.tipos_usuario.tipo == "Alumno"
        redirect_to alumnos_path
      else
        redirect_to root_path
      end
    else
      flash[:alert] = "Su petición de registro de director de tesis no pudo ser creada! Revise el formulario."
      render :new
    end
  end

  # PATCH/PUT /director_tesis_registros/1
  # PATCH/PUT /director_tesis_registros/1.json
  def update
    respond_to do |format|
      if @director_tesis_registro.update(director_tesis_registro_params)
        format.html { redirect_to @director_tesis_registro, notice: 'Su petición de registro de director de tesis fue actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @director_tesis_registro }
      else
        format.html { render :edit }
        format.json { render json: @director_tesis_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /director_tesis_registros/1
  # DELETE /director_tesis_registros/1.json
  def destroy
    @director_tesis_registro.destroy
    respond_to do |format|
      format.html { redirect_to director_tesis_registros_url, notice: 'Su petición de registro de director de tesis fue eliminada correctamente.' }
      format.json { head :no_content }
    end
  end

  def validar_consejero
    if @director_tesis_registro.update(validar_consejero_params)
      format.html { redirect_to @director_tesis_registro, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @director_tesis_registro }
    else
      format.html { render :edit }
      format.json { render json: @director_tesis_registro.errors, status: :unprocessable_entity }
    end
  end

  def validar_coordinador
    if @director_tesis_registro.update(validar_coordinador_params)
      format.html { redirect_to @director_tesis_registro, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @director_tesis_registro }
    else
      format.html { render :edit }
      format.json { render json: @director_tesis_registro.errors, status: :unprocessable_entity }
    end
  end

  def cambiar_estado
    if @director_tesis_registro.update(cambiar_estado_params)
      format.html { redirect_to @director_tesis_registro, notice: 'La petición ha cambiado de estado.' }
      format.json { render :show, status: :ok, location: @director_tesis_registro }
    else
      format.html { render :edit }
      format.json { render json: @director_tesis_registro.errors, status: :unprocessable_entity }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def director_tesis_registro_params
      params.require(:director_tesis_registro).permit(:nombre, :codirector, :user_id, :valida_consejero, :valida_coordinador, :estado)
    end

    def director_tesis_registro
      @director_tesis_registro = DirectorTesisRegistro.new(director_tesis_registro_params)
    end

    def validar_consejero_params
      params.require(:director_tesis_registro).permit(:valida_consejero)
    end

    def validar_coordinador_params
      params.require(:director_tesis_registro).permit(:valida_coordinador)
    end

    def cambiar_estado_params
      params.require(:director_tesis_registro).permit(:estado)
    end

end
