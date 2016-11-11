class EstadosController < ApplicationController
  before_action :authenticate_user!
  before_action :estado, only: :create
  load_and_authorize_resource

  # GET /estados
  # GET /estados.json
  def index
    @estados = Estado.all
  end

  # GET /estados/1
  # GET /estados/1.json
  def show
  end

  # GET /estados/new
  def new
    @estado = Estado.new
  end

  # GET /estados/1/edit
  def edit
  end

  # POST /estados
  # POST /estados.json
  def create

    respond_to do |format|
      if @estado.save
        format.html { redirect_to @estado, notice: 'Se añadió un estado correctamente.' }
        format.json { render :show, status: :created, location: @estado }
      else
        format.html { render :new }
        format.json { render json: @estado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estados/1
  # PATCH/PUT /estados/1.json
  def update
    respond_to do |format|
      if @estado.update(estado_params)
        format.html { redirect_to @estado, notice: 'La actualización del estado se realizó correctamente.' }
        format.json { render :show, status: :ok, location: @estado }
      else
        format.html { render :edit }
        format.json { render json: @estado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estados/1
  # DELETE /estados/1.json
  def destroy
    @estado.destroy
    respond_to do |format|
      format.html { redirect_to estados_url, notice: 'El estado se eliminó corrctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def estado_params
      params.require(:estado).permit(:estado)
    end

    def estado
      @estado = Estado.new(estado_params)
    end
end
