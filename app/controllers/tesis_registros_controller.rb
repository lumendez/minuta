class TesisRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :tesis_registro, only: :create
  load_and_authorize_resource

  # GET /tesis_registros
  # GET /tesis_registros.json
  def index
    @tesis_registros = TesisRegistro.all
  end

  # GET /tesis_registros/1
  # GET /tesis_registros/1.json
  def show
  end

  # GET /tesis_registros/new
  def new
    @tesis_registro = current_user.tesis_registros.build
  end

  # GET /tesis_registros/1/edit
  def edit
  end

  # POST /tesis_registros
  # POST /tesis_registros.json
  def create
    @tesis_registro = current_user.tesis_registros.build(tesis_registro_params)

    if @tesis_registro.save
      flash[:success] = "Su petición de registro de tesis y comisión revisora ha sido creada!"
      redirect_to tesis_registros_path
    else
      flash[:alert] = "Su petición de registro de tesis y comisión revisora no pudo ser creada! Revise el formulario."
      render :new
    end

  end

  # PATCH/PUT /tesis_registros/1
  # PATCH/PUT /tesis_registros/1.json
  def update
    respond_to do |format|
      if @tesis_registro.update(tesis_registro_params)
        format.html { redirect_to @tesis_registro, notice: 'Su petición para solicitar el registro de tema de tesis, directores y comisión revisora fue actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @tesis_registro }
      else
        format.html { render :edit }
        format.json { render json: @tesis_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tesis_registros/1
  # DELETE /tesis_registros/1.json
  def destroy
    @tesis_registro.destroy
    respond_to do |format|
      format.html { redirect_to tesis_registros_url, notice: 'Su petición para solicitar el registro de tema de tesis, directores y comisión revisora fue eliminada correctamente.' }
      format.json { head :no_content }
    end
  end

  def validar_consejero
    if @tesis_registro.update(validar_consejero_params)
      format.html { redirect_to @tesis_registro, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @tesis_registro }
    else
      format.html { render :edit }
      format.json { render json: @tesis_registro.errors, status: :unprocessable_entity }
    end
  end

  def validar_coordinador
    if @tesis_registro.update(validar_coordinador_params)
      format.html { redirect_to @tesis_registro, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @tesis_registro }
    else
      format.html { render :edit }
      format.json { render json: @tesis_registro.errors, status: :unprocessable_entity }
    end
  end

  def cambiar_estado
    if @tesis_registro.update(cambiar_estado_params)
      format.html { redirect_to @tesis_registro, notice: 'La petición ha cambiado de estado.' }
      format.json { render :show, status: :ok, location: @tesis_registro }
    else
      format.html { render :edit }
      format.json { render json: @tesis_registro.errors, status: :unprocessable_entity }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def tesis_registro_params
      params.require(:tesis_registro).permit(:tema, :director, :director_dos, :presidente, :secretario, :primer_vocal, :segundo_vocal, :tercer_vocal, :suplente, :valida_consejero, :valida_coordinador, :estado)
    end

    def tesis_registro
      @tesis_registro = TesisRegistro.new(tesis_registro_params)
    end

    def validar_consejero_params
      params.require(:tesis_registro).permit(:valida_consejero)
    end

    def validar_coordinador_params
      params.require(:tesis_registro).permit(:valida_coordinador)
    end

    def cambiar_estado_params
      params.require(:tesis_registro).permit(:estado)
    end
end
