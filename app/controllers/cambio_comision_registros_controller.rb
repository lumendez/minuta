class CambioComisionRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :cambio_comision_registro, only: :create
  load_and_authorize_resource

  # GET /cambio_comision_registros
  # GET /cambio_comision_registros.json
  def index
    @filterrific = initialize_filterrific(
    CambioComisionRegistro,
    params[:filterrific],
    select_options:{
      sorted_by: CambioComisionRegistro.options_for_sorted_by
    },
    ) or return
    @cambio_comision_registros = @filterrific.find.order("created_at DESC").page(params[:pagina])

    respond_to do |format|
      format.html
      format.js
    end

    rescue ActiveRecord::RecordNotFound => e
    # There is an issue with the persisted param_set. Reset it.
    puts "Se tuvieron que restablecer los valores: #{ e.message }"
    redirect_to(reset_filterrific_url(format: :html)) and return
  end

  # GET /cambio_comision_registros/1
  # GET /cambio_comision_registros/1.json
  def show
  end

  # GET /cambio_comision_registros/new
  def new
    if current_user.sepi_programa.nil?
      redirect_to alumnos_path, alert: "Necesita pertenecer a un programa de posgrado para esta acción"
    else
      if current_user.comision_registros.present?
        @anterior_comision = current_user.comision_registros.last
        @cambio_comision_registro = current_user.cambio_comision_registros.build
      else
        redirect_to alumnos_path, alert: "Necesita haber registrado una comisión revisora para esta acción"
      end
    end
  end

  # GET /cambio_comision_registros/1/edit
  def edit
  end

  # POST /cambio_comision_registros
  # POST /cambio_comision_registros.json
  def create
    @cambio_comision_registro = current_user.cambio_comision_registros.build(cambio_comision_registro_params)

    if @cambio_comision_registro.save
      flash[:success] = "Su solicitud para registrar el cambio comisión revisora de tesis fue creada!"
      if current_user.tipos_usuario.tipo == "Alumno"
        redirect_to alumnos_path
      else
        redirect_to root_path
      end
    else
      flash[:alert] = "Su solicitud para el cambio comisión revisora de tesis no puede ser creada! Revise el formulario."
      render :new
    end
  end

  # PATCH/PUT /cambio_comision_registros/1
  # PATCH/PUT /cambio_comision_registros/1.json
  def update
    respond_to do |format|
      if @cambio_comision_registro.update(cambio_comision_registro_params)
        format.html { redirect_to @cambio_comision_registro, notice: 'Cambio comision registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @cambio_comision_registro }
      else
        format.html { render :edit }
        format.json { render json: @cambio_comision_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cambio_comision_registros/1
  # DELETE /cambio_comision_registros/1.json
  def destroy
    @cambio_comision_registro.destroy
    respond_to do |format|
      format.html { redirect_to cambio_comision_registros_url, notice: 'Cambio comision registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def validar_consejero
    if @cambio_comision_registro.update(validar_consejero_params)
      format.html { redirect_to @cambio_comision_registro, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @cambio_comision_registro }
    else
      format.html { render :edit }
      format.json { render json: @cambio_comision_registro.errors, status: :unprocessable_entity }
    end
  end

  def validar_coordinador
    if @cambio_comision_registro.update(validar_coordinador_params)
      format.html { redirect_to @cambio_comision_registro, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @cambio_comision_registro }
    else
      format.html { render :edit }
      format.json { render json: @cambio_comision_registro.errors, status: :unprocessable_entity }
    end
  end

  def cambiar_estado
    if @cambio_comision_registro.update(cambiar_estado_params)
      format.html { redirect_to @cambio_comision_registro, notice: 'La petición ha cambiado de estado.' }
      format.json { render :show, status: :ok, location: @cambio_comision_registro }
    else
      format.html { render :edit }
      format.json { render json: @cambio_comision_registro.errors, status: :unprocessable_entity }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def cambio_comision_registro_params
      params.require(:cambio_comision_registro).permit(:presidente, :secretario, :primer_vocal, :segundo_vocal, :tercer_vocal, :suplente, :valida_consejero, :valida_coordinador, :estado)
    end

    def cambio_comision_registro
      @cambio_comision_registro = CambioComisionRegistro.new(cambio_comision_registro_params)
    end

    def validar_consejero_params
      params.require(:cambio_comision_registro).permit(:valida_consejero)
    end

    def validar_coordinador_params
      params.require(:cambio_comision_registro).permit(:valida_coordinador)
    end

    def cambiar_estado_params
      params.require(:cambio_comision_registro).permit(:estado)
    end
end
