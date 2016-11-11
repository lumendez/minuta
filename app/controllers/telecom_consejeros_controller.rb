class TelecomConsejerosController < ApplicationController
  before_action :authenticate_user!
  before_action :telecom_consejero, only: :create
  load_and_authorize_resource

  # GET /telecom_consejeros
  # GET /telecom_consejeros.json
  def index
    @telecom_consejeros = TelecomConsejero.all
  end

  # GET /telecom_consejeros/1
  # GET /telecom_consejeros/1.json
  def show
  end

  # GET /telecom_consejeros/new
  def new
    @telecom_consejero = TelecomConsejero.new
  end

  # GET /telecom_consejeros/1/edit
  def edit
  end

  # POST /telecom_consejeros
  # POST /telecom_consejeros.json
  def create

    respond_to do |format|
      if @telecom_consejero.save
        format.html { redirect_to @telecom_consejero, notice: 'Telecom consejero was successfully created.' }
        format.json { render :show, status: :created, location: @telecom_consejero }
      else
        format.html { render :new }
        format.json { render json: @telecom_consejero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telecom_consejeros/1
  # PATCH/PUT /telecom_consejeros/1.json
  def update
    respond_to do |format|
      if @telecom_consejero.update(telecom_consejero_params)
        format.html { redirect_to @telecom_consejero, notice: 'Telecom consejero was successfully updated.' }
        format.json { render :show, status: :ok, location: @telecom_consejero }
      else
        format.html { render :edit }
        format.json { render json: @telecom_consejero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telecom_consejeros/1
  # DELETE /telecom_consejeros/1.json
  def destroy
    @telecom_consejero.destroy
    respond_to do |format|
      format.html { redirect_to telecom_consejeros_url, notice: 'Telecom consejero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def telecom_consejero_params
      params.require(:telecom_consejero).permit(:nombre)
    end

    def telecom_consejero
      @telecom_consejero = TelecomConsejero.new(telecom_consejero_params)
    end
end
