class ElectricaAsignaturasController < ApplicationController
  before_action :set_electrica_asignatura, only: [:show, :edit, :update, :destroy]

  # GET /electrica_asignaturas
  # GET /electrica_asignaturas.json
  def index
    @electrica_asignaturas = ElectricaAsignatura.all
  end

  # GET /electrica_asignaturas/1
  # GET /electrica_asignaturas/1.json
  def show
  end

  # GET /electrica_asignaturas/new
  def new
    @electrica_asignatura = ElectricaAsignatura.new
  end

  # GET /electrica_asignaturas/1/edit
  def edit
  end

  # POST /electrica_asignaturas
  # POST /electrica_asignaturas.json
  def create
    @electrica_asignatura = ElectricaAsignatura.new(electrica_asignatura_params)

    respond_to do |format|
      if @electrica_asignatura.save
        format.html { redirect_to @electrica_asignatura, notice: 'Electrica asignatura was successfully created.' }
        format.json { render :show, status: :created, location: @electrica_asignatura }
      else
        format.html { render :new }
        format.json { render json: @electrica_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /electrica_asignaturas/1
  # PATCH/PUT /electrica_asignaturas/1.json
  def update
    respond_to do |format|
      if @electrica_asignatura.update(electrica_asignatura_params)
        format.html { redirect_to @electrica_asignatura, notice: 'Electrica asignatura was successfully updated.' }
        format.json { render :show, status: :ok, location: @electrica_asignatura }
      else
        format.html { render :edit }
        format.json { render json: @electrica_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /electrica_asignaturas/1
  # DELETE /electrica_asignaturas/1.json
  def destroy
    @electrica_asignatura.destroy
    respond_to do |format|
      format.html { redirect_to electrica_asignaturas_url, notice: 'Electrica asignatura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_electrica_asignatura
      @electrica_asignatura = ElectricaAsignatura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def electrica_asignatura_params
      params.require(:electrica_asignatura).permit(:nombre, :clave)
    end
end
