class TemaTesisRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :tema_tesis_registro, only: :create
  load_and_authorize_resource

  # GET /tema_tesis_registros
  # GET /tema_tesis_registros.json
  def index
    @filterrific = initialize_filterrific(
    TemaTesisRegistro,
    params[:filterrific],
    select_options:{
      sorted_by: TemaTesisRegistro.options_for_sorted_by
    },
    ) or return
    @tema_tesis_registros = @filterrific.find.where(revisado: false).order("created_at DESC").page(params[:pagina])

    respond_to do |format|
      format.html
      format.js
    end

    rescue ActiveRecord::RecordNotFound => e
    # There is an issue with the persisted param_set. Reset it.
    puts "Se tuvieron que restablecer los valores: #{ e.message }"
    redirect_to(reset_filterrific_url(format: :html)) and return
  end

  # GET /tema_tesis_registros/1
  # GET /tema_tesis_registros/1.json
  def show
  end

  # GET /tema_tesis_registros/new
  def new
    if current_user.sepi_programa.nil?
      redirect_to alumnos_path, alert: "Necesita pertenecer a un programa de posgrado para esta acción"
    else
      @tema_tesis_registro = current_user.tema_tesis_registros.build
    end
  end

  # GET /tema_tesis_registros/1/edit
  def edit
  end

  # POST /tema_tesis_registros
  # POST /tema_tesis_registros.json
  def create
    @tema_tesis_registro = current_user.tema_tesis_registros.build(tema_tesis_registro_params)

    if @tema_tesis_registro.save
      flash[:success] = "Su petición de registro de tema de tesis ha sido creado!"
      if current_user.tipos_usuario.tipo == "Alumno"
        redirect_to alumnos_path
      else
        redirect_to root_path
      end
    else
      flash[:alert] = "Su petición de registro de tema de tesis no pudo ser creada! Revise el formulario."
      render :new
    end
  end

  # PATCH/PUT /tema_tesis_registros/1
  # PATCH/PUT /tema_tesis_registros/1.json
  def update
    respond_to do |format|
      if @tema_tesis_registro.update(tema_tesis_registro_params)
        format.html { redirect_to @tema_tesis_registro, notice: 'Su petición de registro de tema de tesis fue actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @tema_tesis_registro }
      else
        format.html { render :edit }
        format.json { render json: @tema_tesis_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tema_tesis_registros/1
  # DELETE /tema_tesis_registros/1.json
  def destroy
    @tema_tesis_registro.destroy
    respond_to do |format|
      format.html { redirect_to tema_tesis_registros_url, notice: 'Su petición de registro de tema de tesis fue eliminada correctamente.' }
      format.json { head :no_content }
    end
  end

  def validar_consejero
    if @tema_tesis_registro.update(validar_consejero_params)
      format.html { redirect_to @tema_tesis_registro, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @tema_tesis_registro }
    else
      format.html { render :edit }
      format.json { render json: @tema_tesis_registro.errors, status: :unprocessable_entity }
    end
  end

  def validar_coordinador
    if @tema_tesis_registro.update(validar_coordinador_params)
      format.html { redirect_to @tema_tesis_registro, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @tema_tesis_registro }
    else
      format.html { render :edit }
      format.json { render json: @tema_tesis_registro.errors, status: :unprocessable_entity }
    end
  end

  def cambiar_estado
    if @tema_tesis_registro.update(cambiar_estado_params)
      format.html { redirect_to @tema_tesis_registro, notice: 'La petición ha cambiado de estado.' }
      format.json { render :show, status: :ok, location: @tema_tesis_registro }
    else
      format.html { render :edit }
      format.json { render json: @tema_tesis_registro.errors, status: :unprocessable_entity }
    end
  end

  def marcar
    @tema_tesis_registro.toggle!(:revisado)
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def tema_tesis_registro_params
      params.require(:tema_tesis_registro).permit(:tema, :user_id, :valida_consejero, :valida_coordinador, :estado, :revisado)
    end

    def tema_tesis_registro
      @tema_tesis_registro = TemaTesisRegistro.new(tema_tesis_registro_params)
    end

    def validar_consejero_params
      params.require(:tema_tesis_registro).permit(:valida_consejero)
    end

    def validar_coordinador_params
      params.require(:tema_tesis_registro).permit(:valida_coordinador)
    end

    def cambiar_estado_params
      params.require(:tema_tesis_registro).permit(:estado)
    end
end
