class CambioComiteRegistrosController < ApplicationController
  before_action :set_cambio_comite_registro, only: [:show, :edit, :update, :destroy]

  # GET /cambio_comite_registros
  # GET /cambio_comite_registros.json
  def index
    @cambio_comite_registros = CambioComiteRegistro.all
  end

  # GET /cambio_comite_registros/1
  # GET /cambio_comite_registros/1.json
  def show
  end

  # GET /cambio_comite_registros/new
  def new
    @cambio_comite_registro = CambioComiteRegistro.new
  end

  # GET /cambio_comite_registros/1/edit
  def edit
  end

  # POST /cambio_comite_registros
  # POST /cambio_comite_registros.json
  def create
    @cambio_comite_registro = CambioComiteRegistro.new(cambio_comite_registro_params)

    respond_to do |format|
      if @cambio_comite_registro.save
        format.html { redirect_to @cambio_comite_registro, notice: 'Cambio comite registro was successfully created.' }
        format.json { render :show, status: :created, location: @cambio_comite_registro }
      else
        format.html { render :new }
        format.json { render json: @cambio_comite_registro.errors, status: :unprocessable_entity }
      end
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cambio_comite_registro
      @cambio_comite_registro = CambioComiteRegistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cambio_comite_registro_params
      params.require(:cambio_comite_registro).permit(:tutor_uno, :tutor_dos, :tutor_tres, :tutor_cuatro, :user_id, :valida_consejero, :valida_coordinador, :estado)
    end
end
