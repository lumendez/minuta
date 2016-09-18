class BajaAsignaturasController < ApplicationController
  before_action :set_baja_asignatura, only: [:show, :edit, :update, :destroy]

  # GET /baja_asignaturas
  # GET /baja_asignaturas.json
  def index
    @baja_asignaturas = BajaAsignatura.all
  end

  # GET /baja_asignaturas/1
  # GET /baja_asignaturas/1.json
  def show
  end

  # GET /baja_asignaturas/new
  def new
    @baja_asignatura = BajaAsignatura.new
  end

  # GET /baja_asignaturas/1/edit
  def edit
  end

  # POST /baja_asignaturas
  # POST /baja_asignaturas.json
  def create
    @baja_asignatura = BajaAsignatura.new(baja_asignatura_params)

    respond_to do |format|
      if @baja_asignatura.save
        format.html { redirect_to @baja_asignatura, notice: 'Baja asignatura was successfully created.' }
        format.json { render :show, status: :created, location: @baja_asignatura }
      else
        format.html { render :new }
        format.json { render json: @baja_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baja_asignaturas/1
  # PATCH/PUT /baja_asignaturas/1.json
  def update
    respond_to do |format|
      if @baja_asignatura.update(baja_asignatura_params)
        format.html { redirect_to @baja_asignatura, notice: 'Baja asignatura was successfully updated.' }
        format.json { render :show, status: :ok, location: @baja_asignatura }
      else
        format.html { render :edit }
        format.json { render json: @baja_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baja_asignaturas/1
  # DELETE /baja_asignaturas/1.json
  def destroy
    @baja_asignatura.destroy
    respond_to do |format|
      format.html { redirect_to baja_asignaturas_url, notice: 'Baja asignatura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baja_asignatura
      @baja_asignatura = BajaAsignatura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baja_asignatura_params
      params.require(:baja_asignatura).permit(:nombre)
    end
end
