class SistemasConsejerosController < ApplicationController
  before_action :authenticate_user!
  before_action :sistemas_consejero, only: :create
  load_and_authorize_resource

  # GET /sistemas_consejeros
  # GET /sistemas_consejeros.json
  def index
    @sistemas_consejeros = SistemasConsejero.all
  end

  # GET /sistemas_consejeros/1
  # GET /sistemas_consejeros/1.json
  def show
  end

  # GET /sistemas_consejeros/new
  def new
    @sistemas_consejero = SistemasConsejero.new
  end

  # GET /sistemas_consejeros/1/edit
  def edit
  end

  # POST /sistemas_consejeros
  # POST /sistemas_consejeros.json
  def create

    respond_to do |format|
      if @sistemas_consejero.save
        format.html { redirect_to @sistemas_consejero, notice: 'Sistemas consejero was successfully created.' }
        format.json { render :show, status: :created, location: @sistemas_consejero }
      else
        format.html { render :new }
        format.json { render json: @sistemas_consejero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sistemas_consejeros/1
  # PATCH/PUT /sistemas_consejeros/1.json
  def update
    respond_to do |format|
      if @sistemas_consejero.update(sistemas_consejero_params)
        format.html { redirect_to @sistemas_consejero, notice: 'Sistemas consejero was successfully updated.' }
        format.json { render :show, status: :ok, location: @sistemas_consejero }
      else
        format.html { render :edit }
        format.json { render json: @sistemas_consejero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sistemas_consejeros/1
  # DELETE /sistemas_consejeros/1.json
  def destroy
    @sistemas_consejero.destroy
    respond_to do |format|
      format.html { redirect_to sistemas_consejeros_url, notice: 'Sistemas consejero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def sistemas_consejero_params
      params.require(:sistemas_consejero).permit(:nombre)
    end

    def sistemas_consejero
      @sistemas_consejero = SistemasConsejero.new(sistemas_consejero_params)
    end
end
