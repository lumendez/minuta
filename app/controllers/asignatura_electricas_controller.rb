class AsignaturaElectricasController < ApplicationController
  before_action :set_asignatura_electrica, only: [:show, :edit, :update, :destroy]

  # GET /asignatura_electricas
  # GET /asignatura_electricas.json
  def index
    @asignatura_electricas = AsignaturaElectrica.all
  end

  # GET /asignatura_electricas/1
  # GET /asignatura_electricas/1.json
  def show
  end

  # GET /asignatura_electricas/new
  def new
    @asignatura_electrica = AsignaturaElectrica.new
  end

  # GET /asignatura_electricas/1/edit
  def edit
  end

  # POST /asignatura_electricas
  # POST /asignatura_electricas.json
  def create
    @asignatura_electrica = AsignaturaElectrica.new(asignatura_electrica_params)

    respond_to do |format|
      if @asignatura_electrica.save
        format.html { redirect_to @asignatura_electrica, notice: 'Asignatura electrica was successfully created.' }
        format.json { render :show, status: :created, location: @asignatura_electrica }
      else
        format.html { render :new }
        format.json { render json: @asignatura_electrica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asignatura_electricas/1
  # PATCH/PUT /asignatura_electricas/1.json
  def update
    respond_to do |format|
      if @asignatura_electrica.update(asignatura_electrica_params)
        format.html { redirect_to @asignatura_electrica, notice: 'Asignatura electrica was successfully updated.' }
        format.json { render :show, status: :ok, location: @asignatura_electrica }
      else
        format.html { render :edit }
        format.json { render json: @asignatura_electrica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignatura_electricas/1
  # DELETE /asignatura_electricas/1.json
  def destroy
    @asignatura_electrica.destroy
    respond_to do |format|
      format.html { redirect_to asignatura_electricas_url, notice: 'Asignatura electrica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asignatura_electrica
      @asignatura_electrica = AsignaturaElectrica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asignatura_electrica_params
      params.require(:asignatura_electrica).permit(:nombre)
    end
end
