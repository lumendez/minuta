class CambioComiteRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :cambio_comite_registro, only: :create
  load_and_authorize_resource

  # GET /cambio_comite_registros
  # GET /cambio_comite_registros.json
  def index
    @filterrific = initialize_filterrific(
    CambioComiteRegistro,
    params[:filterrific],
    select_options:{
      sorted_by: CambioComiteRegistro.options_for_sorted_by
    },
    ) or return
    @cambio_comite_registros = @filterrific.find.order("created_at DESC").page(params[:pagina])

    respond_to do |format|
      format.html
      format.js
    end

    rescue ActiveRecord::RecordNotFound => e
    # There is an issue with the persisted param_set. Reset it.
    puts "Se tuvieron que restablecer los valores: #{ e.message }"
    redirect_to(reset_filterrific_url(format: :html)) and return
  end

  # GET /cambio_comite_registros/1
  # GET /cambio_comite_registros/1.json
  def show
  end

  # GET /cambio_comite_registros/new
  def new
    if current_user.sepi_programa.nil?
      redirect_to alumnos_path, alert: "Necesita pertenecer a un programa de posgrado para esta acción"
    else
      if current_user.comite_registros.present?
        @anterior_comite = current_user.comite_registros.last
        @cambio_comite_registro = current_user.cambio_comite_registros.build
      else
        redirect_to alumnos_path, alert: "Necesita haber registrado un comité para esta acción"
      end
    end
  end

  # GET /cambio_comite_registros/1/edit
  def edit
    if current_user.sepi_programa.nil?
      current_user.sepi_programa = @cambio_comite_registro.user.sepi_programa
    end
  end

  # POST /cambio_comite_registros
  # POST /cambio_comite_registros.json
  def create
    @cambio_comite_registro = current_user.cambio_comite_registros.build(cambio_comite_registro_params)

    if @cambio_comite_registro.save
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

  # PATCH/PUT /cambio_comite_registros/1
  # PATCH/PUT /cambio_comite_registros/1.json
  def update
    respond_to do |format|
      if @cambio_comite_registro.update(cambio_comite_registro_params)
        format.html { redirect_to @cambio_comite_registro, notice: 'Cambio comite registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @cambio_comite_registro }
      else
        format.html { render :edit }
        format.json { render json: @cambio_comite_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cambio_comite_registros/1
  # DELETE /cambio_comite_registros/1.json
  def destroy
    @cambio_comite_registro.destroy
    respond_to do |format|
      format.html { redirect_to cambio_comite_registros_url, notice: 'Cambio comite registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def validar_consejero
    if @cambio_comite_registro.update(validar_consejero_params)
      format.html { redirect_to @cambio_comite_registro, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @cambio_comite_registro }
    else
      format.html { render :edit }
      format.json { render json: @cambio_comite_registro.errors, status: :unprocessable_entity }
    end
  end

  def validar_coordinador
    if @cambio_comite_registro.update(validar_coordinador_params)
      format.html { redirect_to @cambio_comite_registro, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @cambio_comite_registro }
    else
      format.html { render :edit }
      format.json { render json: @cambio_comite_registro.errors, status: :unprocessable_entity }
    end
  end

  def cambiar_estado
    if @cambio_comite_registro.update(cambiar_estado_params)
      format.html { redirect_to @cambio_comite_registro, notice: 'La petición ha cambiado de estado.' }
      format.json { render :show, status: :ok, location: @cambio_comite_registro }
    else
      format.html { render :edit }
      format.json { render json: @cambio_comite_registro.errors, status: :unprocessable_entity }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def cambio_comite_registro_params
      params.require(:cambio_comite_registro).permit(:tutor_uno, :tutor_dos, :tutor_tres, :tutor_cuatro, :user_id, :valida_consejero, :valida_coordinador, :estado)
    end

    def cambio_comite_registro
      @cambio_comite_registro = CambioComiteRegistro.new(cambio_comite_registro_params)
    end

    def validar_consejero_params
      params.require(:cambio_comite_registro).permit(:valida_consejero)
    end

    def validar_coordinador_params
      params.require(:cambio_comite_registro).permit(:valida_coordinador)
    end

    def cambiar_estado_params
      params.require(:cambio_comite_registro).permit(:estado)
    end
end
