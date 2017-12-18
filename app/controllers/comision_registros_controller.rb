class ComisionRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :comision_registro, only: :create
  load_and_authorize_resource

  # GET /comision_registros
  # GET /comision_registros.json
  def index
    @comision_registros = ComisionRegistro.all
  end

  # GET /comision_registros/1
  # GET /comision_registros/1.json
  def show
  end

  # GET /comision_registros/new
  def new
    @comision_registro = ComisionRegistro.new
  end

  # GET /comision_registros/1/edit
  def edit
  end

  # POST /comision_registros
  # POST /comision_registros.json
  def create
    @comision_registro = ComisionRegistro.new(comision_registro_params)

    respond_to do |format|
      if @comision_registro.save
        format.html { redirect_to @comision_registro, notice: 'Comision registro was successfully created.' }
        format.json { render :show, status: :created, location: @comision_registro }
      else
        format.html { render :new }
        format.json { render json: @comision_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comision_registros/1
  # PATCH/PUT /comision_registros/1.json
  def update
    respond_to do |format|
      if @comision_registro.update(comision_registro_params)
        format.html { redirect_to @comision_registro, notice: 'Comision registro was successfully updated.' }
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
      format.html { redirect_to comision_registros_url, notice: 'Comision registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comision_registro
      @comision_registro = ComisionRegistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comision_registro_params
      params.require(:comision_registro).permit(:presidente, :secretario, :primer_vocal, :segundo_vocal, :tercer_vocal, :suplente, :valida_consejero, :valida_coordinador, :estado)
    end
end
