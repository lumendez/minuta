class ComiteRegistrosController < ApplicationController
  before_action :set_comite_registro, only: [:show, :edit, :update, :destroy]

  # GET /comite_registros
  # GET /comite_registros.json
  def index
    @comite_registros = ComiteRegistro.all
  end

  # GET /comite_registros/1
  # GET /comite_registros/1.json
  def show
  end

  # GET /comite_registros/new
  def new
    @comite_registro = ComiteRegistro.new
  end

  # GET /comite_registros/1/edit
  def edit
  end

  # POST /comite_registros
  # POST /comite_registros.json
  def create
    @comite_registro = ComiteRegistro.new(comite_registro_params)

    respond_to do |format|
      if @comite_registro.save
        format.html { redirect_to @comite_registro, notice: 'Comite registro was successfully created.' }
        format.json { render :show, status: :created, location: @comite_registro }
      else
        format.html { render :new }
        format.json { render json: @comite_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comite_registros/1
  # PATCH/PUT /comite_registros/1.json
  def update
    respond_to do |format|
      if @comite_registro.update(comite_registro_params)
        format.html { redirect_to @comite_registro, notice: 'Comite registro was successfully updated.' }
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
      format.html { redirect_to comite_registros_url, notice: 'Comite registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comite_registro
      @comite_registro = ComiteRegistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comite_registro_params
      params.require(:comite_registro).permit(:tutor_uno, :tutor_dos, :tutor_tres, :tutor_cuatro)
    end
end
