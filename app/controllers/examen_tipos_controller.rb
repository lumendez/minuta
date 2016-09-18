class ExamenTiposController < ApplicationController
  before_action :set_examen_tipo, only: [:show, :edit, :update, :destroy]

  # GET /examen_tipos
  # GET /examen_tipos.json
  def index
    @examen_tipos = ExamenTipo.all
  end

  # GET /examen_tipos/1
  # GET /examen_tipos/1.json
  def show
  end

  # GET /examen_tipos/new
  def new
    @examen_tipo = ExamenTipo.new
  end

  # GET /examen_tipos/1/edit
  def edit
  end

  # POST /examen_tipos
  # POST /examen_tipos.json
  def create
    @examen_tipo = ExamenTipo.new(examen_tipo_params)

    respond_to do |format|
      if @examen_tipo.save
        format.html { redirect_to @examen_tipo, notice: 'Examen tipo was successfully created.' }
        format.json { render :show, status: :created, location: @examen_tipo }
      else
        format.html { render :new }
        format.json { render json: @examen_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /examen_tipos/1
  # PATCH/PUT /examen_tipos/1.json
  def update
    respond_to do |format|
      if @examen_tipo.update(examen_tipo_params)
        format.html { redirect_to @examen_tipo, notice: 'Examen tipo was successfully updated.' }
        format.json { render :show, status: :ok, location: @examen_tipo }
      else
        format.html { render :edit }
        format.json { render json: @examen_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /examen_tipos/1
  # DELETE /examen_tipos/1.json
  def destroy
    @examen_tipo.destroy
    respond_to do |format|
      format.html { redirect_to examen_tipos_url, notice: 'Examen tipo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_examen_tipo
      @examen_tipo = ExamenTipo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def examen_tipo_params
      params.require(:examen_tipo).permit(:tipo)
    end
end
