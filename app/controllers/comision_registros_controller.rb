class ComisionRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :comision_registro, only: :create
  load_and_authorize_resource

  # GET /comision_registros
  # GET /comision_registros.json
  def index
    @filterrific = initialize_filterrific(
    ComisionRegistro,
    params[:filterrific],
    select_options:{
      sorted_by: ComisionRegistro.options_for_sorted_by
    },
    ) or return
    @comision_registros = @filterrific.find.where(revisado: false).order("created_at DESC").page(params[:pagina])

    respond_to do |format|
      format.html
      format.js
    end

    rescue ActiveRecord::RecordNotFound => e
    # There is an issue with the persisted param_set. Reset it.
    puts "Se tuvieron que restablecer los valores: #{ e.message }"
    redirect_to(reset_filterrific_url(format: :html)) and return
  end

  # GET /comision_registros/1
  # GET /comision_registros/1.json
  def show
  end

  # GET /comision_registros/new
  def new
    if current_user.sepi_programa.nil?
      redirect_to alumnos_path, alert: "Necesita pertenecer a un programa de posgrado para esta acción"
    else
      @comision_registro = current_user.comision_registros.build
    end
  end

  # GET /comision_registros/1/edit
  def edit
    if current_user.sepi_programa.nil?
      current_user.sepi_programa = @comision_registro.user.sepi_programa
    end
  end

  # POST /comision_registros
  # POST /comision_registros.json
  def create
    @comision_registro = current_user.comision_registros.build(comision_registro_params)

    if @comision_registro.save
      flash[:success] = "Su solicitud para registrar su comisión revisora de tesis fue creada!"
      if current_user.tipos_usuario.tipo == "Alumno"
        redirect_to alumnos_path
      else
        redirect_to root_path
      end
    else
      flash[:alert] = "Su solicitud para comisión revisora de tesis no puede ser creada! Revise el formulario."
      render :new
    end
  end

  # PATCH/PUT /comision_registros/1
  # PATCH/PUT /comision_registros/1.json
  def update
    respond_to do |format|
      if @comision_registro.update(comision_registro_params)
        format.html { redirect_to @comision_registro, notice: 'La comisión revisora de tesis se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @comision_registro }
      else
        format.html { render :edit }
        format.json { render json: @comision_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comision_registros/1
  # DELETE /comision_registros/1.json
  def destroy
    @comision_registro.destroy
    respond_to do |format|
      format.html { redirect_to comision_registros_url, notice: 'La comisión revisora de tesis se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  def validar_consejero
    if @comision_registro.update(validar_consejero_params)
      format.html { redirect_to @comision_registro, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @comision_registro }
    else
      format.html { render :edit }
      format.json { render json: @comision_registro.errors, status: :unprocessable_entity }
    end
  end

  def validar_coordinador
    if @comision_registro.update(validar_coordinador_params)
      format.html { redirect_to @comision_registro, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @comision_registro }
    else
      format.html { render :edit }
      format.json { render json: @comision_registro.errors, status: :unprocessable_entity }
    end
  end

  def cambiar_estado
    if @comision_registro.update(cambiar_estado_params)
      format.html { redirect_to @comision_registro, notice: 'La petición ha cambiado de estado.' }
      format.json { render :show, status: :ok, location: @comision_registro }
    else
      format.html { render :edit }
      format.json { render json: @comision_registro.errors, status: :unprocessable_entity }
    end
  end

  def marcar
    @comision_registro.toggle!(:revisado)
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def comision_registro_params
      params.require(:comision_registro).permit(:presidente, :secretario, :primer_vocal, :segundo_vocal, :tercer_vocal, :suplente, :valida_consejero, :valida_coordinador, :estado, :revisado, :user_id)
    end

    def comision_registro
      @comision_registro = ComisionRegistro.new(comision_registro_params)
    end

    def validar_consejero_params
      params.require(:comision_registro).permit(:valida_consejero)
    end

    def validar_coordinador_params
      params.require(:comision_registro).permit(:valida_coordinador)
    end

    def cambiar_estado_params
      params.require(:comision_registro).permit(:estado)
    end
end
