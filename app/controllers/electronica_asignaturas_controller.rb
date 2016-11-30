class ElectronicaAsignaturasController < ApplicationController
  before_action :authenticate_user!
  before_action :electronica_asignatura, only: :create
  load_and_authorize_resource

  # GET /electronica_asignaturas
  # GET /electronica_asignaturas.json
  def index
    @electronica_asignaturas = ElectronicaAsignatura.all
  end

  # GET /electronica_asignaturas/1
  # GET /electronica_asignaturas/1.json
  def show
  end

  # GET /electronica_asignaturas/new
  def new
    @electronica_asignatura = ElectronicaAsignatura.new
  end

  # GET /electronica_asignaturas/1/edit
  def edit
  end

  # POST /electronica_asignaturas
  # POST /electronica_asignaturas.json
  def create

    respond_to do |format|
      if @electronica_asignatura.save
        format.html { redirect_to @electronica_asignatura, notice: 'La asignatura del programa de ingeniería electrónica fue creada correctamente.' }
        format.json { render :show, status: :created, location: @electronica_asignatura }
      else
        format.html { render :new }
        format.json { render json: @electronica_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /electronica_asignaturas/1
  # PATCH/PUT /electronica_asignaturas/1.json
  def update
    respond_to do |format|
      if @electronica_asignatura.update(electronica_asignatura_params)
        format.html { redirect_to @electronica_asignatura, notice: 'La asignatura del programa de ingeniería eléctrica fue actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @electronica_asignatura }
      else
        format.html { render :edit }
        format.json { render json: @electronica_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /electronica_asignaturas/1
  # DELETE /electronica_asignaturas/1.json
  def destroy
    @electronica_asignatura.destroy
    respond_to do |format|
      format.html { redirect_to electronica_asignaturas_url, notice: 'La asignatura del programa de ingeniería eléctrica fue eliminada correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def electronica_asignatura_params
      params.require(:electronica_asignatura).permit(:nombre, :clave)
    end

    def electronica_asignatura
      @electronica_asignatura = ElectronicaAsignatura.new(electronica_asignatura_params)
    end
end
