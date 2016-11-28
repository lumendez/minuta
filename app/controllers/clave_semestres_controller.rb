class ClaveSemestresController < ApplicationController
  before_action :authenticate_user!
  before_action :clave_semestre, only: :create
  load_and_authorize_resource

  # GET /clave_semestres
  # GET /clave_semestres.json
  def index
    @clave_semestres = ClaveSemestre.all
  end

  # GET /clave_semestres/1
  # GET /clave_semestres/1.json
  def show
  end

  # GET /clave_semestres/new
  def new
    @clave_semestre = ClaveSemestre.new
  end

  # GET /clave_semestres/1/edit
  def edit
  end

  # POST /clave_semestres
  # POST /clave_semestres.json
  def create
    #@clave_semestre = ClaveSemestre.new(clave_semestre_params)

    respond_to do |format|
      if @clave_semestre.save
        format.html { redirect_to @clave_semestre, notice: 'Se añadió una nueva clave correctamente.' }
        format.json { render :show, status: :created, location: @clave_semestre }
      else
        format.html { render :new }
        format.json { render json: @clave_semestre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clave_semestres/1
  # PATCH/PUT /clave_semestres/1.json
  def update
    respond_to do |format|
      if @clave_semestre.update(clave_semestre_params)
        format.html { redirect_to @clave_semestre, notice: 'La actualización de la clave se realizó correctamente.' }
        format.json { render :show, status: :ok, location: @clave_semestre }
      else
        format.html { render :edit }
        format.json { render json: @clave_semestre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clave_semestres/1
  # DELETE /clave_semestres/1.json
  def destroy
    @clave_semestre.destroy
    respond_to do |format|
      format.html { redirect_to clave_semestres_url, notice: 'La clave se eliminó corrctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def clave_semestre_params
      params.require(:clave_semestre).permit(:semestre)
    end

    def clave_semestre
      @clave_semestre = ClaveSemestre.new(clave_semestre_params)
    end
end
