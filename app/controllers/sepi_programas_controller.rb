class SepiProgramasController < ApplicationController
  before_action :set_sepi_programa, only: [:show, :edit, :update, :destroy]

  # GET /sepi_programas
  # GET /sepi_programas.json
  def index
    @sepi_programas = SepiPrograma.all
  end

  # GET /sepi_programas/1
  # GET /sepi_programas/1.json
  def show
  end

  # GET /sepi_programas/new
  def new
    @sepi_programa = SepiPrograma.new
  end

  # GET /sepi_programas/1/edit
  def edit
  end

  # POST /sepi_programas
  # POST /sepi_programas.json
  def create
    @sepi_programa = SepiPrograma.new(sepi_programa_params)

    respond_to do |format|
      if @sepi_programa.save
        format.html { redirect_to @sepi_programa, notice: 'Sepi programa was successfully created.' }
        format.json { render :show, status: :created, location: @sepi_programa }
      else
        format.html { render :new }
        format.json { render json: @sepi_programa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sepi_programas/1
  # PATCH/PUT /sepi_programas/1.json
  def update
    respond_to do |format|
      if @sepi_programa.update(sepi_programa_params)
        format.html { redirect_to @sepi_programa, notice: 'Sepi programa was successfully updated.' }
        format.json { render :show, status: :ok, location: @sepi_programa }
      else
        format.html { render :edit }
        format.json { render json: @sepi_programa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sepi_programas/1
  # DELETE /sepi_programas/1.json
  def destroy
    @sepi_programa.destroy
    respond_to do |format|
      format.html { redirect_to sepi_programas_url, notice: 'Sepi programa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sepi_programa
      @sepi_programa = SepiPrograma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sepi_programa_params
      params.require(:sepi_programa).permit(:nombre)
    end
end
