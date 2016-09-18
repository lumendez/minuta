class ExamenGraduadosController < ApplicationController
  before_action :set_examen_graduado, only: [:show, :edit, :update, :destroy]

  # GET /examen_graduados
  # GET /examen_graduados.json
  def index
    @examen_graduados = ExamenGraduado.all
  end

  # GET /examen_graduados/1
  # GET /examen_graduados/1.json
  def show
  end

  # GET /examen_graduados/new
  def new
    @examen_graduado = ExamenGraduado.new
  end

  # GET /examen_graduados/1/edit
  def edit
  end

  # POST /examen_graduados
  # POST /examen_graduados.json
  def create
    @examen_graduado = ExamenGraduado.new(examen_graduado_params)

    respond_to do |format|
      if @examen_graduado.save
        format.html { redirect_to @examen_graduado, notice: 'Examen graduado was successfully created.' }
        format.json { render :show, status: :created, location: @examen_graduado }
      else
        format.html { render :new }
        format.json { render json: @examen_graduado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /examen_graduados/1
  # PATCH/PUT /examen_graduados/1.json
  def update
    respond_to do |format|
      if @examen_graduado.update(examen_graduado_params)
        format.html { redirect_to @examen_graduado, notice: 'Examen graduado was successfully updated.' }
        format.json { render :show, status: :ok, location: @examen_graduado }
      else
        format.html { render :edit }
        format.json { render json: @examen_graduado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /examen_graduados/1
  # DELETE /examen_graduados/1.json
  def destroy
    @examen_graduado.destroy
    respond_to do |format|
      format.html { redirect_to examen_graduados_url, notice: 'Examen graduado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_examen_graduado
      @examen_graduado = ExamenGraduado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def examen_graduado_params
      params.require(:examen_graduado).permit(:tipo)
    end
end
