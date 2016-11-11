class ElectronicaConsejerosController < ApplicationController
  before_action :authenticate_user!
  before_action :electronica_consejero, only: :create
  load_and_authorize_resource

  # GET /electronica_consejeros
  # GET /electronica_consejeros.json
  def index
    @electronica_consejeros = ElectronicaConsejero.all
  end

  # GET /electronica_consejeros/1
  # GET /electronica_consejeros/1.json
  def show
  end

  # GET /electronica_consejeros/new
  def new
    @electronica_consejero = ElectronicaConsejero.new
  end

  # GET /electronica_consejeros/1/edit
  def edit
  end

  # POST /electronica_consejeros
  # POST /electronica_consejeros.json
  def create

    respond_to do |format|
      if @electronica_consejero.save
        format.html { redirect_to @electronica_consejero, notice: 'Electronica consejero was successfully created.' }
        format.json { render :show, status: :created, location: @electronica_consejero }
      else
        format.html { render :new }
        format.json { render json: @electronica_consejero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /electronica_consejeros/1
  # PATCH/PUT /electronica_consejeros/1.json
  def update
    respond_to do |format|
      if @electronica_consejero.update(electronica_consejero_params)
        format.html { redirect_to @electronica_consejero, notice: 'Electronica consejero was successfully updated.' }
        format.json { render :show, status: :ok, location: @electronica_consejero }
      else
        format.html { render :edit }
        format.json { render json: @electronica_consejero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /electronica_consejeros/1
  # DELETE /electronica_consejeros/1.json
  def destroy
    @electronica_consejero.destroy
    respond_to do |format|
      format.html { redirect_to electronica_consejeros_url, notice: 'Electronica consejero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def electronica_consejero_params
      params.require(:electronica_consejero).permit(:nombre)
    end

    def electronica_consejero
      @electronica_consejero = ElectronicaConsejero.new(electronica_consejero_params)
    end
end
