class ElectricaConsejerosController < ApplicationController
  before_action :authenticate_user!
  before_action :electrica_consejero, only: :create
  load_and_authorize_resource

  # GET /electrica_consejeros
  # GET /electrica_consejeros.json
  def index
    @electrica_consejeros = ElectricaConsejero.all
  end

  # GET /electrica_consejeros/1
  # GET /electrica_consejeros/1.json
  def show
  end

  # GET /electrica_consejeros/new
  def new
    @electrica_consejero = ElectricaConsejero.new
  end

  # GET /electrica_consejeros/1/edit
  def edit
  end

  # POST /electrica_consejeros
  # POST /electrica_consejeros.json
  def create

    respond_to do |format|
      if @electrica_consejero.save
        format.html { redirect_to @electrica_consejero, notice: 'Se añadió un nombre de consejero de eléctrica correctamente.' }
        format.json { render :show, status: :created, location: @electrica_consejero }
      else
        format.html { render :new }
        format.json { render json: @electrica_consejero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /electrica_consejeros/1
  # PATCH/PUT /electrica_consejeros/1.json
  def update
    respond_to do |format|
      if @electrica_consejero.update(electrica_consejero_params)
        format.html { redirect_to @electrica_consejero, notice: 'La actualización del nombre del cconsejero de eléctrica se realizó correctamente.' }
        format.json { render :show, status: :ok, location: @electrica_consejero }
      else
        format.html { render :edit }
        format.json { render json: @electrica_consejero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /electrica_consejeros/1
  # DELETE /electrica_consejeros/1.json
  def destroy
    @electrica_consejero.destroy
    respond_to do |format|
      format.html { redirect_to electrica_consejeros_url, notice: 'El nombre del consejero de eléctrica se eliminó corrctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def electrica_consejero_params
      params.require(:electrica_consejero).permit(:nombre)
    end

    def electrica_consejero
      @electrica_consejero = ElectricaConsejero.new(electrica_consejero_params)
    end
end
