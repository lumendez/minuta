class TiposBajasController < ApplicationController
  before_action :set_tipos_baja, only: [:show, :edit, :update, :destroy]

  # GET /tipos_bajas
  # GET /tipos_bajas.json
  def index
    @tipos_bajas = TiposBaja.all
  end

  # GET /tipos_bajas/1
  # GET /tipos_bajas/1.json
  def show
  end

  # GET /tipos_bajas/new
  def new
    @tipos_baja = TiposBaja.new
  end

  # GET /tipos_bajas/1/edit
  def edit
  end

  # POST /tipos_bajas
  # POST /tipos_bajas.json
  def create
    @tipos_baja = TiposBaja.new(tipos_baja_params)

    respond_to do |format|
      if @tipos_baja.save
        format.html { redirect_to @tipos_baja, notice: 'Tipos baja was successfully created.' }
        format.json { render :show, status: :created, location: @tipos_baja }
      else
        format.html { render :new }
        format.json { render json: @tipos_baja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipos_bajas/1
  # PATCH/PUT /tipos_bajas/1.json
  def update
    respond_to do |format|
      if @tipos_baja.update(tipos_baja_params)
        format.html { redirect_to @tipos_baja, notice: 'Tipos baja was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipos_baja }
      else
        format.html { render :edit }
        format.json { render json: @tipos_baja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_bajas/1
  # DELETE /tipos_bajas/1.json
  def destroy
    @tipos_baja.destroy
    respond_to do |format|
      format.html { redirect_to tipos_bajas_url, notice: 'Tipos baja was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipos_baja
      @tipos_baja = TiposBaja.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipos_baja_params
      params.require(:tipos_baja).permit(:tipo)
    end
end
