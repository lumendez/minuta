class CambiarAsignaturasController < ApplicationController
  before_action :set_cambiar_asignatura, only: [:show, :edit, :update, :destroy]

  # GET /cambiar_asignaturas
  # GET /cambiar_asignaturas.json
  def index
    @cambiar_asignaturas = CambiarAsignatura.all
  end

  # GET /cambiar_asignaturas/1
  # GET /cambiar_asignaturas/1.json
  def show
  end

  # GET /cambiar_asignaturas/new
  def new
    @cambiar_asignatura = CambiarAsignatura.new
  end

  # GET /cambiar_asignaturas/1/edit
  def edit
  end

  # POST /cambiar_asignaturas
  # POST /cambiar_asignaturas.json
  def create
    @cambiar_asignatura = CambiarAsignatura.new(cambiar_asignatura_params)

    respond_to do |format|
      if @cambiar_asignatura.save
        format.html { redirect_to @cambiar_asignatura, notice: 'Cambiar asignatura was successfully created.' }
        format.json { render :show, status: :created, location: @cambiar_asignatura }
      else
        format.html { render :new }
        format.json { render json: @cambiar_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cambiar_asignaturas/1
  # PATCH/PUT /cambiar_asignaturas/1.json
  def update
    respond_to do |format|
      if @cambiar_asignatura.update(cambiar_asignatura_params)
        format.html { redirect_to @cambiar_asignatura, notice: 'Cambiar asignatura was successfully updated.' }
        format.json { render :show, status: :ok, location: @cambiar_asignatura }
      else
        format.html { render :edit }
        format.json { render json: @cambiar_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cambiar_asignaturas/1
  # DELETE /cambiar_asignaturas/1.json
  def destroy
    @cambiar_asignatura.destroy
    respond_to do |format|
      format.html { redirect_to cambiar_asignaturas_url, notice: 'Cambiar asignatura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cambiar_asignatura
      @cambiar_asignatura = CambiarAsignatura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cambiar_asignatura_params
      params.require(:cambiar_asignatura).permit(:anterior, :actual)
    end
end
