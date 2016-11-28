class MecanicaConsejerosController < ApplicationController
  before_action :authenticate_user!
  before_action :mecanica_consejero, only: :create
  load_and_authorize_resource

  # GET /mecanica_consejeros
  # GET /mecanica_consejeros.json
  def index
    @mecanica_consejeros = MecanicaConsejero.all
  end

  # GET /mecanica_consejeros/1
  # GET /mecanica_consejeros/1.json
  def show
  end

  # GET /mecanica_consejeros/new
  def new
    @mecanica_consejero = MecanicaConsejero.new
  end

  # GET /mecanica_consejeros/1/edit
  def edit
  end

  # POST /mecanica_consejeros
  # POST /mecanica_consejeros.json
  def create


    respond_to do |format|
      if @mecanica_consejero.save
        format.html { redirect_to @mecanica_consejero, notice: 'Se añadió un nombre de consejero de ingeniería mecánica correctamente.' }
        format.json { render :show, status: :created, location: @mecanica_consejero }
      else
        format.html { render :new }
        format.json { render json: @mecanica_consejero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mecanica_consejeros/1
  # PATCH/PUT /mecanica_consejeros/1.json
  def update
    respond_to do |format|
      if @mecanica_consejero.update(mecanica_consejero_params)
        format.html { redirect_to @mecanica_consejero, notice: 'El nombre del consejero de ingeniería mecánica se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @mecanica_consejero }
      else
        format.html { render :edit }
        format.json { render json: @mecanica_consejero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mecanica_consejeros/1
  # DELETE /mecanica_consejeros/1.json
  def destroy
    @mecanica_consejero.destroy
    respond_to do |format|
      format.html { redirect_to mecanica_consejeros_url, notice: 'El nombre del consejero de ingeniería eléctrica se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def mecanica_consejero_params
      params.require(:mecanica_consejero).permit(:nombre)
    end

    def mecanica_consejero
      @mecanica_consejero = MecanicaConsejero.new(mecanica_consejero_params)
    end
end
