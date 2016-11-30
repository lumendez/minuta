class ConsejerosController < ApplicationController
  before_action :authenticate_user!
  before_action :consejero, only: :create
  load_and_authorize_resource

  # GET /consejeros
  # GET /consejeros.json
  def index
    @consejeros = Consejero.all
  end

  # GET /consejeros/1
  # GET /consejeros/1.json
  def show
  end

  # GET /consejeros/new
  def new
    @consejero = Consejero.new
  end

  # GET /consejeros/1/edit
  def edit
  end

  # POST /consejeros
  # POST /consejeros.json
  def create

    respond_to do |format|
      if @consejero.save
        format.html { redirect_to @consejero, notice: 'Se añadió un nombre de consejero correctamente.' }
        format.json { render :show, status: :created, location: @consejero }
      else
        format.html { render :new }
        format.json { render json: @consejero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consejeros/1
  # PATCH/PUT /consejeros/1.json
  def update
    respond_to do |format|
      if @consejero.update(consejero_params)
        format.html { redirect_to @consejero, notice: 'La actualización del nombre del consejero se realizó correctamente.' }
        format.json { render :show, status: :ok, location: @consejero }
      else
        format.html { render :edit }
        format.json { render json: @consejero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consejeros/1
  # DELETE /consejeros/1.json
  def destroy
    @consejero.destroy
    respond_to do |format|
      format.html { redirect_to consejeros_url, notice: 'El nombre del consejero se eliminó corrctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def consejero_params
      params.require(:consejero).permit(:nombre)
    end

    def consejero
      @consejero = Consejero.new(consejero_params)
    end
end
