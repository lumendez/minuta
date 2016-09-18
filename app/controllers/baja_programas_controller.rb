class BajaProgramasController < ApplicationController
  before_action :set_baja_programa, only: [:show, :edit, :update, :destroy]

  # GET /baja_programas
  # GET /baja_programas.json
  def index
    @baja_programas = BajaPrograma.all
  end

  # GET /baja_programas/1
  # GET /baja_programas/1.json
  def show
  end

  # GET /baja_programas/new
  def new
    @baja_programa = BajaPrograma.new
  end

  # GET /baja_programas/1/edit
  def edit
  end

  # POST /baja_programas
  # POST /baja_programas.json
  def create
    @baja_programa = BajaPrograma.new(baja_programa_params)

    respond_to do |format|
      if @baja_programa.save
        format.html { redirect_to @baja_programa, notice: 'Baja programa was successfully created.' }
        format.json { render :show, status: :created, location: @baja_programa }
      else
        format.html { render :new }
        format.json { render json: @baja_programa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baja_programas/1
  # PATCH/PUT /baja_programas/1.json
  def update
    respond_to do |format|
      if @baja_programa.update(baja_programa_params)
        format.html { redirect_to @baja_programa, notice: 'Baja programa was successfully updated.' }
        format.json { render :show, status: :ok, location: @baja_programa }
      else
        format.html { render :edit }
        format.json { render json: @baja_programa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baja_programas/1
  # DELETE /baja_programas/1.json
  def destroy
    @baja_programa.destroy
    respond_to do |format|
      format.html { redirect_to baja_programas_url, notice: 'Baja programa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baja_programa
      @baja_programa = BajaPrograma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baja_programa_params
      params.require(:baja_programa).permit(:nombre)
    end
end
