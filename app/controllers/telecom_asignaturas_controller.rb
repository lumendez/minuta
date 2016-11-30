class TelecomAsignaturasController < ApplicationController
  before_action :authenticate_user!
  before_action :telecom_asignatura, only: :create
  load_and_authorize_resource

  # GET /telecom_asignaturas
  # GET /telecom_asignaturas.json
  def index
    @telecom_asignaturas = TelecomAsignatura.all
  end

  # GET /telecom_asignaturas/1
  # GET /telecom_asignaturas/1.json
  def show
  end

  # GET /telecom_asignaturas/new
  def new
    @telecom_asignatura = TelecomAsignatura.new
  end

  # GET /telecom_asignaturas/1/edit
  def edit
  end

  # POST /telecom_asignaturas
  # POST /telecom_asignaturas.json
  def create

    respond_to do |format|
      if @telecom_asignatura.save
        format.html { redirect_to @telecom_asignatura, notice: 'La asignatura del programa de ingeniería de telecomunicaciones fue creada correctamente.' }
        format.json { render :show, status: :created, location: @telecom_asignatura }
      else
        format.html { render :new }
        format.json { render json: @telecom_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telecom_asignaturas/1
  # PATCH/PUT /telecom_asignaturas/1.json
  def update
    respond_to do |format|
      if @telecom_asignatura.update(telecom_asignatura_params)
        format.html { redirect_to @telecom_asignatura, notice: 'La asignatura del programa de ingeniería de telecomunicaciones fue actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @telecom_asignatura }
      else
        format.html { render :edit }
        format.json { render json: @telecom_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telecom_asignaturas/1
  # DELETE /telecom_asignaturas/1.json
  def destroy
    @telecom_asignatura.destroy
    respond_to do |format|
      format.html { redirect_to telecom_asignaturas_url, notice: 'La asignatura del programa de ingeniería de telecomunicaciones fue eliminada correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def telecom_asignatura_params
      params.require(:telecom_asignatura).permit(:nombre, :clave)
    end

    def telecom_asignatura
      @telecom_asignatura = TelecomAsignatura.new(telecom_asignatura_params)
    end
end
