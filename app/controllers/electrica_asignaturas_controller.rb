class ElectricaAsignaturasController < ApplicationController
  before_action :authenticate_user!
  before_action :electrica_asignatura, only: :create
  load_and_authorize_resource

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

    respond_to do |format|
      if @electrica_asignatura.save
        format.html { redirect_to @electrica_asignatura, notice: 'La asignatura del programa de ingeniería eléctrica fue creada correctamente.' }
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
        format.html { redirect_to @electrica_asignatura, notice: 'La asignatura del programa de ingeniería eléctrica fue actualizada correctamente.' }
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
      format.html { redirect_to electrica_asignaturas_url, notice: 'La asignatura del programa de ingeniería eléctrica fue eliminada correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def electrica_asignatura_params
      params.require(:electrica_asignatura).permit(:nombre, :clave)
    end

    def electrica_asignatura
      @electrica_asignatura = ElectricaAsignatura.new(electrica_asignatura_params)
    end
end
