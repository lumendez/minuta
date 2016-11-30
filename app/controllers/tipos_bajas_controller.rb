class TiposBajasController < ApplicationController
  before_action :authenticate_user!
  before_action :tipos_baja, only: :create
  load_and_authorize_resource

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

    respond_to do |format|
      if @tipos_baja.save
        format.html { redirect_to @tipos_baja, notice: 'Se añadió un nombre de tipo de baja correctamente.' }
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
        format.html { redirect_to @tipos_baja, notice: 'La actualización del nombre del tipo de baja se realizó correctamente.' }
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
      format.html { redirect_to tipos_bajas_url, notice: 'El nombre del tipo de baja se eliminó corrctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def tipos_baja_params
      params.require(:tipos_baja).permit(:tipo)
    end

    def tipos_baja
      @tipos_baja = TiposBaja.new(tipos_baja_params)
    end
end
