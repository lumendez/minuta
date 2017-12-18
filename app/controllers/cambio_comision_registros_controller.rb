class CambioComisionRegistrosController < ApplicationController
  before_action :set_cambio_comision_registro, only: [:show, :edit, :update, :destroy]

  # GET /cambio_comision_registros
  # GET /cambio_comision_registros.json
  def index
    @cambio_comision_registros = CambioComisionRegistro.all
  end

  # GET /cambio_comision_registros/1
  # GET /cambio_comision_registros/1.json
  def show
  end

  # GET /cambio_comision_registros/new
  def new
    @cambio_comision_registro = CambioComisionRegistro.new
  end

  # GET /cambio_comision_registros/1/edit
  def edit
  end

  # POST /cambio_comision_registros
  # POST /cambio_comision_registros.json
  def create
    @cambio_comision_registro = CambioComisionRegistro.new(cambio_comision_registro_params)

    respond_to do |format|
      if @cambio_comision_registro.save
        format.html { redirect_to @cambio_comision_registro, notice: 'Cambio comision registro was successfully created.' }
        format.json { render :show, status: :created, location: @cambio_comision_registro }
      else
        format.html { render :new }
        format.json { render json: @cambio_comision_registro.errors, status: :unprocessable_entity }
      end
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cambio_comision_registro
      @cambio_comision_registro = CambioComisionRegistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cambio_comision_registro_params
      params.require(:cambio_comision_registro).permit(:presidente, :secretario, :primer_vocal, :segundo_vocal, :tercer_vocal, :suplente, :valida_consejero, :valida_coordinador, :estado)
    end
end
