class MecanicaAsignaturasController < ApplicationController
  before_action :authenticate_user!
  before_action :mecanica_asignatura, only: :create
  load_and_authorize_resource

  # GET /mecanica_asignaturas
  # GET /mecanica_asignaturas.json
  def index
    @mecanica_asignaturas = MecanicaAsignatura.all
  end

  # GET /mecanica_asignaturas/1
  # GET /mecanica_asignaturas/1.json
  def show
  end

  # GET /mecanica_asignaturas/new
  def new
    @mecanica_asignatura = MecanicaAsignatura.new
  end

  # GET /mecanica_asignaturas/1/edit
  def edit
  end

  # POST /mecanica_asignaturas
  # POST /mecanica_asignaturas.json
  def create

    respond_to do |format|
      if @mecanica_asignatura.save
        format.html { redirect_to @mecanica_asignatura, notice: 'Mecanica asignatura was successfully created.' }
        format.json { render :show, status: :created, location: @mecanica_asignatura }
      else
        format.html { render :new }
        format.json { render json: @mecanica_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mecanica_asignaturas/1
  # PATCH/PUT /mecanica_asignaturas/1.json
  def update
    respond_to do |format|
      if @mecanica_asignatura.update(mecanica_asignatura_params)
        format.html { redirect_to @mecanica_asignatura, notice: 'Mecanica asignatura was successfully updated.' }
        format.json { render :show, status: :ok, location: @mecanica_asignatura }
      else
        format.html { render :edit }
        format.json { render json: @mecanica_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mecanica_asignaturas/1
  # DELETE /mecanica_asignaturas/1.json
  def destroy
    @mecanica_asignatura.destroy
    respond_to do |format|
      format.html { redirect_to mecanica_asignaturas_url, notice: 'Mecanica asignatura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def mecanica_asignatura_params
      params.require(:mecanica_asignatura).permit(:nombre, :clave)
    end

    def mecanica_asignatura
      @mecanica_asignatura = MecanicaAsignatura.new(mecanica_asignatura_params)
    end
end
