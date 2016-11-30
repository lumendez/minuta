class ExamenTiposController < ApplicationController
  before_action :authenticate_user!
  before_action :examen_tipo, only: :create
  load_and_authorize_resource

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

    respond_to do |format|
      if @examen_tipo.save
        format.html { redirect_to @examen_tipo, notice: 'Se añadió un nombre de tipo de examen correctamente.' }
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
        format.html { redirect_to @examen_tipo, notice: 'La actualización del nombre del tipo de examen se realizó correctamente.' }
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
      format.html { redirect_to examen_tipos_url, notice: 'El nombre del tipo de examen se eliminó corrctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def examen_tipo_params
      params.require(:examen_tipo).permit(:tipo)
    end

    def examen_tipo
      @examen_tipo = ExamenTipo.new(examen_tipo_params)
    end
end
