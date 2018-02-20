class CambioDirectorTesisRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :cambio_director_tesis_registro, only: :create
  load_and_authorize_resource

  # GET /cambio_director_tesis_registros
  # GET /cambio_director_tesis_registros.json
  def index
    @filterrific = initialize_filterrific(
    CambioDirectorTesisRegistro,
    params[:filterrific],
    select_options:{
      sorted_by: CambioDirectorTesisRegistro.options_for_sorted_by
    },
    ) or return
    @cambio_director_tesis_registros = @filterrific.find.where(revisado: false).order("created_at DESC").page(params[:pagina])

    respond_to do |format|
      format.html
      format.js
    end

    rescue ActiveRecord::RecordNotFound => e
    # There is an issue with the persisted param_set. Reset it.
    puts "Se tuvieron que restablecer los valores: #{ e.message }"
    redirect_to(reset_filterrific_url(format: :html)) and return
  end

  # GET /cambio_director_tesis_registros/1
  # GET /cambio_director_tesis_registros/1.json
  def show
  end

  # GET /cambio_director_tesis_registros/new
  def new
    def new
    if current_user.sepi_programa.nil?
      redirect_to alumnos_path, alert: "Necesita pertenecer a un programa de posgrado para esta acción"
    else
      if current_user.director_tesis_registros.present?
        @director_anterior = current_user.director_tesis_registros.last
        @cambio_director_tesis_registro = current_user.cambio_director_tesis_registros.build
      else
        redirect_to alumnos_path, alert: "Necesita haber registrado un director de tesis para esta acción"
      end
    end
  end
  end

  # GET /cambio_director_tesis_registros/1/edit
  def edit
    if current_user.area == "Sin área"
      current_user.area = @cambio_director_tesis_registro.user.area
    end
  end

  # POST /cambio_director_tesis_registros
  # POST /cambio_director_tesis_registros.json
  def create
    @cambio_director_tesis_registro = current_user.cambio_director_tesis_registros.build(cambio_director_tesis_registro_params)
      if @cambio_director_tesis_registro.save
        flash[:success] = "Su petición para cambiar director(es) de tesis ha sido creada!"
        if current_user.tipos_usuario.tipo == "Alumno"
          redirect_to alumnos_path
        else
          redirect_to root_path
        end
      else
        flash[:alert] = "Su petición para cambiar director(es) de tesis no pudo crearse! Revise el formulario."
        render :new
      end
  end

  # PATCH/PUT /cambio_director_tesis_registros/1
  # PATCH/PUT /cambio_director_tesis_registros/1.json
  def update
    respond_to do |format|
      if @cambio_director_tesis_registro.update(cambio_director_tesis_registro_params)
        format.html { redirect_to @cambio_director_tesis_registro, notice: 'Su petición para cambiar de director(es) de tesis fue actualizada.' }
        format.json { render :show, status: :ok, location: @cambio_director_tesis_registro }
      else
        format.html { render :edit }
        format.json { render json: @cambio_director_tesis_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cambio_director_tesis_registros/1
  # DELETE /cambio_director_tesis_registros/1.json
  def destroy
    @cambio_director_tesis_registro.destroy
    respond_to do |format|
      format.html { redirect_to cambio_director_tesis_registros_url, notice: 'Su petición para cambiar de director(es) de tesis fue eliminada.' }
      format.json { head :no_content }
    end
  end

  def validar_consejero
    if @cambio_director_tesis_registro.update(validar_consejero_params)
      format.html { redirect_to @cambio_director_tesis_registro, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @cambio_director_tesis_registro }
    else
      format.html { render :edit }
      format.json { render json: @cambio_director_tesis_registro.errors, status: :unprocessable_entity }
    end
  end

  def validar_coordinador
    if @cambio_director_tesis_registro.update(validar_coordinador_params)
      format.html { redirect_to @cambio_director_tesis_registro, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @cambio_director_tesis_registro }
    else
      format.html { render :edit }
      format.json { render json: @cambio_director_tesis_registro.errors, status: :unprocessable_entity }
    end
  end

  def cambiar_estado
    if @cambio_director_tesis_registros.update(cambiar_estado_params)
      format.html { redirect_to @cambio_director_tesis_registro, notice: 'La petición ha cambiado de estado.' }
      format.json { render :show, status: :ok, location: @cambio_director_tesis_registro }
    else
      format.html { render :edit }
      format.json { render json: @cambio_director_tesis_registro.errors, status: :unprocessable_entity }
    end
  end

  def marcar
    @cambio_director_tesis_registro.toggle!(:revisado)
  end

  def toggle_validar_coordinador
    @cambio_director_tesis_registro.toggle!(:valida_coordinador)
  end

  def toggle_validar_consejero
    @cambio_director_tesis_registro.toggle!(:valida_consejero)
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def cambio_director_tesis_registro_params
      params.require(:cambio_director_tesis_registro).permit(:nombre, :codirector, :user_id, :valida_consejero, :valida_coordinador, :estado, :revisado)
    end

    def cambio_director_tesis_registro
      @cambio_director_tesis_registro = CambioDirectorTesisRegistro.new(cambio_director_tesis_registro_params)
    end

    def validar_consejero_params
      params.require(:cambio_director_tesis_registro).permit(:valida_consejero)
    end

    def validar_coordinador_params
      params.require(:cambio_director_tesis_registro).permit(:valida_coordinador)
    end

    def cambiar_estado_params
      params.require(:cambio_director_tesis_registro).permit(:estado)
    end

end
