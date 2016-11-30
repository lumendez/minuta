class SistemasAsignaturasController < ApplicationController
  before_action :authenticate_user!
  before_action :sistemas_asignatura, only: :create
  load_and_authorize_resource

  # GET /sistemas_asignaturas
  # GET /sistemas_asignaturas.json
  def index
    @sistemas_asignaturas = SistemasAsignatura.all
  end

  # GET /sistemas_asignaturas/1
  # GET /sistemas_asignaturas/1.json
  def show
  end

  # GET /sistemas_asignaturas/new
  def new
    @sistemas_asignatura = SistemasAsignatura.new
  end

  # GET /sistemas_asignaturas/1/edit
  def edit
  end

  # POST /sistemas_asignaturas
  # POST /sistemas_asignaturas.json
  def create

    respond_to do |format|
      if @sistemas_asignatura.save
        format.html { redirect_to @sistemas_asignatura, notice: 'La asignatura del programa de ingeniería de sistemas fue creada correctamente.' }
        format.json { render :show, status: :created, location: @sistemas_asignatura }
      else
        format.html { render :new }
        format.json { render json: @sistemas_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sistemas_asignaturas/1
  # PATCH/PUT /sistemas_asignaturas/1.json
  def update
    respond_to do |format|
      if @sistemas_asignatura.update(sistemas_asignatura_params)
        format.html { redirect_to @sistemas_asignatura, notice: 'La asignatura del programa de ingeniería de sistemas fue actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @sistemas_asignatura }
      else
        format.html { render :edit }
        format.json { render json: @sistemas_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sistemas_asignaturas/1
  # DELETE /sistemas_asignaturas/1.json
  def destroy
    @sistemas_asignatura.destroy
    respond_to do |format|
      format.html { redirect_to sistemas_asignaturas_url, notice: 'La asignatura del programa de ingeniería de sistemas fue eliminada correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def sistemas_asignatura_params
      params.require(:sistemas_asignatura).permit(:nombre, :clave)
    end

    def sistemas_asignatura
      @sistemas_asignatura = SistemasAsignatura.new(sistemas_asignatura_params)
    end
end
