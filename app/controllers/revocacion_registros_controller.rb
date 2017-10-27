class RevocacionRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :revocacion_registro, only: :create
  load_and_authorize_resource

  # GET /revocacion_registros
  # GET /revocacion_registros.json
  def index
    @revocacion_registros = RevocacionRegistro.all
  end

  # GET /revocacion_registros/1
  # GET /revocacion_registros/1.json
  def show
  end

  # GET /revocacion_registros/new
  def new
    if current_user.sepi_programa.nil?
      redirect_to alumnos_path, alert: "Necesita pertenecer a un programa de posgrado para esta acción"
    else
      @revocacion_registro = current_user.revocacion_registros.build
    end
  end

  # GET /revocacion_registros/1/edit
  def edit
  end

  # POST /revocacion_registros
  # POST /revocacion_registros.json
  def create
    @revocacion_registro = current_user.revocacion_registros.build(revocacion_registro_params)

    if @revocacion_registro.save
      flash[:success] = "Su petición para solicitar una revocación de baja fue creada!"
      if current_user.tipos_usuarios.tipo == "Alumno"
        redirect_to alumnos_path
      else
        redirect_to root_path
      end
    else
      flash[:alert] = "Su petición para solicitar una revocación de baja no pudo ser creada! Revise el formulario."
      render :new
    end
  end

  # PATCH/PUT /revocacion_registros/1
  # PATCH/PUT /revocacion_registros/1.json
  def update
    respond_to do |format|
      if @revocacion_registro.update(revocacion_registro_params)
        format.html { redirect_to @revocacion_registro, notice: 'Su petición para solicitar revocación de baja fue actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @revocacion_registro }
      else
        format.html { render :edit }
        format.json { render json: @revocacion_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /revocacion_registros/1
  # DELETE /revocacion_registros/1.json
  def destroy
    @revocacion_registro.destroy
    respond_to do |format|
      format.html { redirect_to revocacion_registros_url, notice: 'Su petición para solicitar revocación de baja fue eliminada correctamente.' }
      format.json { head :no_content }
    end
  end

  def validar_consejero
    if @revocacion_registro.update(validar_consejero_params)
      format.html { redirect_to @revocacion_registro, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @receso_semestre }
    else
      format.html { render :edit }
      format.json { render json: @revocacion_registro.errors, status: :unprocessable_entity }
    end
  end

  def validar_coordinador
    if @revocacion_registro.update(validar_coordinador_params)
      format.html { redirect_to @revocacion_registro, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @revocacion_registro }
    else
      format.html { render :edit }
      format.json { render json: @revocacion_registro.errors, status: :unprocessable_entity }
    end
  end

  def cambiar_estado
    if @revocacion_registro.update(cambiar_estado_params)
      format.html { redirect_to @revocacion_registro, notice: 'La petición ha cambiado de estado.' }
      format.json { render :show, status: :ok, location: @revocacion_registro }
    else
      format.html { render :edit }
      format.json { render json: @revocacion_registro.errors, status: :unprocessable_entity }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def revocacion_registro_params
      params.require(:revocacion_registro).permit(:titulo, :director, :user_id, :valida_consejero, :valida_coordinador, :estado)
    end

    def revocacion_registro
      @revocacion_registro = RevocacionRegistro.new(revocacion_registro_params)
    end

    def validar_consejero_params
      params.require(:revocacion_registro).permit(:valida_consejero)
    end

    def validar_coordinador_params
      params.require(:revocacion_registro).permit(:valida_coordinador)
    end

    def cambiar_estado_params
      params.require(:revocacion_registro).permit(:estado)
    end
end
