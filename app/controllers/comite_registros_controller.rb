class ComiteRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :comite_registro, only: :create
  load_and_authorize_resource

  # GET /comite_registros
  # GET /comite_registros.json
  def index
    @filterrific = initialize_filterrific(
    ComiteRegistro,
    params[:filterrific],
    select_options:{
      sorted_by: ComiteRegistro.options_for_sorted_by
    },
    ) or return
    @comite_registros = @filterrific.find.where(revisado: false).order("created_at DESC").page(params[:pagina])

    respond_to do |format|
      format.html
      format.js
    end

    rescue ActiveRecord::RecordNotFound => e
    # There is an issue with the persisted param_set. Reset it.
    puts "Se tuvieron que restablecer los valores: #{ e.message }"
    redirect_to(reset_filterrific_url(format: :html)) and return
  end

  # GET /comite_registros/1
  # GET /comite_registros/1.json
  def show
  end

  # GET /comite_registros/new
  def new
    if current_user.sepi_programa.nil?
      redirect_to alumnos_path, alert: "Necesita pertenecer a un programa de posgrado para esta acción"
    else
      @comite_registro = current_user.comite_registros.build
    end
  end

  # GET /comite_registros/1/edit
  def edit
    if current_user.sepi_programa.nil?
      current_user.sepi_programa = @comite_registro.user.sepi_programa
    end
  end

  # POST /comite_registros
  # POST /comite_registros.json
  def create
    @comite_registro = current_user.comite_registros.build(comite_registro_params)

    if @comite_registro.save
      flash[:success] = "Su petición para registrar su comité tutorial fue creada!"
      if current_user.tipos_usuario.tipo == "Alumno"
        redirect_to alumnos_path
      else
        redirect_to root_path
      end
    else
      flash[:alert] = "Su petición para registrar su comité tutorial no pudo ser creada! Revise el formulario."
      render :new
    end
  end

  # PATCH/PUT /comite_registros/1
  # PATCH/PUT /comite_registros/1.json
  def update
    respond_to do |format|
      if @comite_registro.update(comite_registro_params)
        format.html { redirect_to @comite_registro, notice: 'Su petición para registrar su comité tutorial fue actualizada.' }
        format.json { render :show, status: :ok, location: @comite_registro }
      else
        format.html { render :edit }
        format.json { render json: @comite_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comite_registros/1
  # DELETE /comite_registros/1.json
  def destroy
    @comite_registro.destroy
    respond_to do |format|
      format.html { redirect_to comite_registros_url, notice: 'Su petición para registrar su comité tutorial fue eliminada.' }
      format.json { head :no_content }
    end
  end

  def validar_consejero
    if @comite_registro.update(validar_consejero_params)
      format.html { redirect_to @comite_registro, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @comite_registro }
    else
      format.html { render :edit }
      format.json { render json: @comite_registro.errors, status: :unprocessable_entity }
    end
  end

  def validar_coordinador
    if @comite_registro.update(validar_coordinador_params)
      format.html { redirect_to @comite_registro, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @comite_registro }
    else
      format.html { render :edit }
      format.json { render json: @comite_registro.errors, status: :unprocessable_entity }
    end
  end

  def cambiar_estado
    if @comite_registro.update(cambiar_estado_params)
      format.html { redirect_to @comite_registro, notice: 'La petición ha cambiado de estado.' }
      format.json { render :show, status: :ok, location: @comite_registro }
    else
      format.html { render :edit }
      format.json { render json: @comite_registro.errors, status: :unprocessable_entity }
    end
  end

  def marcar
    @comite_registro.toggle!(:revisado)
  end

  def toggle_validar_coordinador
    @comite_registro.toggle!(:valida_coordinador)
  end

  def toggle_validar_consejero
    @comite_registro.toggle!(:valida_consejero)
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def comite_registro_params
      params.require(:comite_registro).permit(:tutor_uno, :tutor_dos, :tutor_tres, :tutor_cuatro, :valida_consejero, :valida_coordinador, :estado, :revisado)
    end

    def comite_registro
      @comite_registro = ComiteRegistro.new(comite_registro_params)
    end

    def validar_consejero_params
      params.require(:comite_registro).permit(:valida_consejero)
    end

    def validar_coordinador_params
      params.require(:comite_registro).permit(:valida_coordinador)
    end

    def cambiar_estado_params
      params.require(:comite_registro).permit(:estado)
    end
end
