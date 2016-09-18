class ConsejeroElectricasController < ApplicationController
  before_action :set_consejero_electrica, only: [:show, :edit, :update, :destroy]

  # GET /consejero_electricas
  # GET /consejero_electricas.json
  def index
    @consejero_electricas = ConsejeroElectrica.all
  end

  # GET /consejero_electricas/1
  # GET /consejero_electricas/1.json
  def show
  end

  # GET /consejero_electricas/new
  def new
    @consejero_electrica = ConsejeroElectrica.new
  end

  # GET /consejero_electricas/1/edit
  def edit
  end

  # POST /consejero_electricas
  # POST /consejero_electricas.json
  def create
    @consejero_electrica = ConsejeroElectrica.new(consejero_electrica_params)

    respond_to do |format|
      if @consejero_electrica.save
        format.html { redirect_to @consejero_electrica, notice: 'Consejero electrica was successfully created.' }
        format.json { render :show, status: :created, location: @consejero_electrica }
      else
        format.html { render :new }
        format.json { render json: @consejero_electrica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consejero_electricas/1
  # PATCH/PUT /consejero_electricas/1.json
  def update
    respond_to do |format|
      if @consejero_electrica.update(consejero_electrica_params)
        format.html { redirect_to @consejero_electrica, notice: 'Consejero electrica was successfully updated.' }
        format.json { render :show, status: :ok, location: @consejero_electrica }
      else
        format.html { render :edit }
        format.json { render json: @consejero_electrica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consejero_electricas/1
  # DELETE /consejero_electricas/1.json
  def destroy
    @consejero_electrica.destroy
    respond_to do |format|
      format.html { redirect_to consejero_electricas_url, notice: 'Consejero electrica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consejero_electrica
      @consejero_electrica = ConsejeroElectrica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consejero_electrica_params
      params.require(:consejero_electrica).permit(:nombre)
    end
end
