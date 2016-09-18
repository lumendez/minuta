class TesisRegistrosController < ApplicationController
  before_action :set_tesis_registro, only: [:show, :edit, :update, :destroy]

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
    @tesis_registro = TesisRegistro.new
  end

  # GET /tesis_registros/1/edit
  def edit
  end

  # POST /tesis_registros
  # POST /tesis_registros.json
  def create
    @tesis_registro = TesisRegistro.new(tesis_registro_params)

    respond_to do |format|
      if @tesis_registro.save
        format.html { redirect_to @tesis_registro, notice: 'Tesis registro was successfully created.' }
        format.json { render :show, status: :created, location: @tesis_registro }
      else
        format.html { render :new }
        format.json { render json: @tesis_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tesis_registros/1
  # PATCH/PUT /tesis_registros/1.json
  def update
    respond_to do |format|
      if @tesis_registro.update(tesis_registro_params)
        format.html { redirect_to @tesis_registro, notice: 'Tesis registro was successfully updated.' }
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
      format.html { redirect_to tesis_registros_url, notice: 'Tesis registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tesis_registro
      @tesis_registro = TesisRegistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tesis_registro_params
      params.require(:tesis_registro).permit(:tema, :director, :presidente, :secretario, :primer_vocal, :segundo_vocal, :tercer_vocal, :suplente)
    end
end
