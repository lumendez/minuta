class AgregarAsignaturasController < ApplicationController
  before_action :set_agregar_asignatura, only: [:show, :edit, :update, :destroy]

  # GET /agregar_asignaturas
  # GET /agregar_asignaturas.json
  def index
    @agregar_asignaturas = AgregarAsignatura.all
  end

  # GET /agregar_asignaturas/1
  # GET /agregar_asignaturas/1.json
  def show
  end

  # GET /agregar_asignaturas/new
  def new
    @agregar_asignatura = AgregarAsignatura.new
  end

  # GET /agregar_asignaturas/1/edit
  def edit
  end

  # POST /agregar_asignaturas
  # POST /agregar_asignaturas.json
  def create
    @agregar_asignatura = AgregarAsignatura.new(agregar_asignatura_params)

    respond_to do |format|
      if @agregar_asignatura.save
        format.html { redirect_to @agregar_asignatura, notice: 'Agregar asignatura was successfully created.' }
        format.json { render :show, status: :created, location: @agregar_asignatura }
      else
        format.html { render :new }
        format.json { render json: @agregar_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agregar_asignaturas/1
  # PATCH/PUT /agregar_asignaturas/1.json
  def update
    respond_to do |format|
      if @agregar_asignatura.update(agregar_asignatura_params)
        format.html { redirect_to @agregar_asignatura, notice: 'Agregar asignatura was successfully updated.' }
        format.json { render :show, status: :ok, location: @agregar_asignatura }
      else
        format.html { render :edit }
        format.json { render json: @agregar_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agregar_asignaturas/1
  # DELETE /agregar_asignaturas/1.json
  def destroy
    @agregar_asignatura.destroy
    respond_to do |format|
      format.html { redirect_to agregar_asignaturas_url, notice: 'Agregar asignatura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agregar_asignatura
      @agregar_asignatura = AgregarAsignatura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agregar_asignatura_params
      params.require(:agregar_asignatura).permit(:nombre)
    end
end
