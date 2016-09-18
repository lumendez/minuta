class CambiarConsejerosController < ApplicationController
  before_action :set_cambiar_consejero, only: [:show, :edit, :update, :destroy]

  # GET /cambiar_consejeros
  # GET /cambiar_consejeros.json
  def index
    @cambiar_consejeros = CambiarConsejero.all
  end

  # GET /cambiar_consejeros/1
  # GET /cambiar_consejeros/1.json
  def show
  end

  # GET /cambiar_consejeros/new
  def new
    @cambiar_consejero = CambiarConsejero.new
  end

  # GET /cambiar_consejeros/1/edit
  def edit
  end

  # POST /cambiar_consejeros
  # POST /cambiar_consejeros.json
  def create
    @cambiar_consejero = CambiarConsejero.new(cambiar_consejero_params)

    respond_to do |format|
      if @cambiar_consejero.save
        format.html { redirect_to @cambiar_consejero, notice: 'Cambiar consejero was successfully created.' }
        format.json { render :show, status: :created, location: @cambiar_consejero }
      else
        format.html { render :new }
        format.json { render json: @cambiar_consejero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cambiar_consejeros/1
  # PATCH/PUT /cambiar_consejeros/1.json
  def update
    respond_to do |format|
      if @cambiar_consejero.update(cambiar_consejero_params)
        format.html { redirect_to @cambiar_consejero, notice: 'Cambiar consejero was successfully updated.' }
        format.json { render :show, status: :ok, location: @cambiar_consejero }
      else
        format.html { render :edit }
        format.json { render json: @cambiar_consejero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cambiar_consejeros/1
  # DELETE /cambiar_consejeros/1.json
  def destroy
    @cambiar_consejero.destroy
    respond_to do |format|
      format.html { redirect_to cambiar_consejeros_url, notice: 'Cambiar consejero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cambiar_consejero
      @cambiar_consejero = CambiarConsejero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cambiar_consejero_params
      params.require(:cambiar_consejero).permit(:anterior, :actual)
    end
end
