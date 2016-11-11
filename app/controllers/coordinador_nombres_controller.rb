class CoordinadorNombresController < ApplicationController
  before_action :authenticate_user!
  before_action :coordinador_nombre, only: :create
  load_and_authorize_resource

  # GET /coordinador_nombres
  # GET /coordinador_nombres.json
  def index
    @coordinador_nombres = CoordinadorNombre.all
  end

  # GET /coordinador_nombres/1
  # GET /coordinador_nombres/1.json
  def show
  end

  # GET /coordinador_nombres/new
  def new
    @coordinador_nombre = CoordinadorNombre.new
  end

  # GET /coordinador_nombres/1/edit
  def edit
  end

  # POST /coordinador_nombres
  # POST /coordinador_nombres.json
  def create

    respond_to do |format|
      if @coordinador_nombre.save
        format.html { redirect_to @coordinador_nombre, notice: 'Se añadió un nombre de coordinador correctamente.' }
        format.json { render :show, status: :created, location: @coordinador_nombre }
      else
        format.html { render :new }
        format.json { render json: @coordinador_nombre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coordinador_nombres/1
  # PATCH/PUT /coordinador_nombres/1.json
  def update
    respond_to do |format|
      if @coordinador_nombre.update(coordinador_nombre_params)
        format.html { redirect_to @coordinador_nombre, notice: 'La actualización del nombre del coordinador se realizó correctamente.' }
        format.json { render :show, status: :ok, location: @coordinador_nombre }
      else
        format.html { render :edit }
        format.json { render json: @coordinador_nombre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coordinador_nombres/1
  # DELETE /coordinador_nombres/1.json
  def destroy
    @coordinador_nombre.destroy
    respond_to do |format|
      format.html { redirect_to coordinador_nombres_url, notice: 'El nombre del coordinador se eliminó corrctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def coordinador_nombre_params
      params.require(:coordinador_nombre).permit(:nombre)
    end

    def coordinador_nombre
        @coordinador_nombre = CoordinadorNombre.new(coordinador_nombre_params)
    end
end
