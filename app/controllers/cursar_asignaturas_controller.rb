class CursarAsignaturasController < ApplicationController
  before_action :set_cursar_asignatura, only: [:show, :edit, :update, :destroy]

  # GET /cursar_asignaturas
  # GET /cursar_asignaturas.json
  def index
    @cursar_asignaturas = CursarAsignatura.all
  end

  # GET /cursar_asignaturas/1
  # GET /cursar_asignaturas/1.json
  def show
  end

  # GET /cursar_asignaturas/new
  def new
    @cursar_asignatura = CursarAsignatura.new
  end

  # GET /cursar_asignaturas/1/edit
  def edit
  end

  # POST /cursar_asignaturas
  # POST /cursar_asignaturas.json
  def create
    @cursar_asignatura = CursarAsignatura.new(cursar_asignatura_params)

    respond_to do |format|
      if @cursar_asignatura.save
        format.html { redirect_to @cursar_asignatura, notice: 'Cursar asignatura was successfully created.' }
        format.json { render :show, status: :created, location: @cursar_asignatura }
      else
        format.html { render :new }
        format.json { render json: @cursar_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cursar_asignaturas/1
  # PATCH/PUT /cursar_asignaturas/1.json
  def update
    respond_to do |format|
      if @cursar_asignatura.update(cursar_asignatura_params)
        format.html { redirect_to @cursar_asignatura, notice: 'Cursar asignatura was successfully updated.' }
        format.json { render :show, status: :ok, location: @cursar_asignatura }
      else
        format.html { render :edit }
        format.json { render json: @cursar_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cursar_asignaturas/1
  # DELETE /cursar_asignaturas/1.json
  def destroy
    @cursar_asignatura.destroy
    respond_to do |format|
      format.html { redirect_to cursar_asignaturas_url, notice: 'Cursar asignatura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cursar_asignatura
      @cursar_asignatura = CursarAsignatura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cursar_asignatura_params
      params.require(:cursar_asignatura).permit(:nombre, :clave, :unidad)
    end
end
