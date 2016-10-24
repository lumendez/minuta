class BajaAsignaturasController < ApplicationController
  before_action :authenticate_user!
  before_action :baja_asignatura, only: :create
  load_and_authorize_resource
  #before_action :set_baja_asignatura, only: [:show, :edit, :update, :destroy]
  #before_action :owned_post, only: [:edit, :update, :destroy]

  # GET /baja_asignaturas
  # GET /baja_asignaturas.json
  def index
    @baja_asignaturas = BajaAsignatura.all
    #@baja_asignaturas = current_user.baja_asignaturas
  end

  # GET /baja_asignaturas/1
  # GET /baja_asignaturas/1.json
  def show
  end

  # GET /baja_asignaturas/new
  def new
    @baja_asignatura = current_user.baja_asignaturas.build
  end

  # GET /baja_asignaturas/1/edit
  def edit
  end

  def create
    @baja_asignatura = current_user.baja_asignaturas.build(baja_asignatura_params)

    if @baja_asignatura.save
      flash[:success] = "Su petición  de baja ha sido creada!"
      redirect_to baja_asignaturas_path
    else
      flash[:alert] = "Su petición de baja no pudo crearse!  Por favor revise el formulario."
      render :new
    end
  end

  # PATCH/PUT /baja_asignaturas/1
  # PATCH/PUT /baja_asignaturas/1.json
  def update
    respond_to do |format|
      if @baja_asignatura.update(baja_asignatura_params)
        format.html { redirect_to root_path, notice: 'Su petición de baja fue actualizada.' }
        format.json { render :show, status: :ok, location: @baja_asignatura }
      else
        format.html { render :edit }
        format.json { render json: @baja_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baja_asignaturas/1
  # DELETE /baja_asignaturas/1.json
  def destroy
    @baja_asignatura.destroy
    respond_to do |format|
      format.html { redirect_to baja_asignaturas_url, notice: 'Su petición de baja fue eliminada.' }
      format.json { head :no_content }
    end
  end

  def validar_consejero
    if @baja_asignatura.update(validar_consejero_params)
      format.html { redirect_to @baja_asignatura, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @baja_asignatura }
    else
      format.html { render :edit }
      format.json { render json: @baja_asignatura.errors, status: :unprocessable_entity }
    end
  end

  def validar_coordinador
    if @baja_asignatura.update(validar_coordinador_params)
      format.html { redirect_to @baja_asignatura, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @baja_asignatura }
    else
      format.html { render :edit }
      format.json { render json: @baja_asignatura.errors, status: :unprocessable_entity }
    end
  end

  def cambiar_estado
    if @baja_asignatura.update(cambiar_estado_params)
      format.html { redirect_to @baja_asignatura, notice: 'La petición ha cambiado de estado.' }
      format.json { render :show, status: :ok, location: @baja_asignatura }
    else
      format.html { render :edit }
      format.json { render json: @baja_asignatura.errors, status: :unprocessable_entity }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    #def set_baja_asignatura
      #@baja_asignatura = BajaAsignatura.find(params[:id])
    #end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baja_asignatura_params
      params.require(:baja_asignatura).permit(:nombre, :clave, :valida_consejero, :valida_coordinador, :estado)
    end

    def baja_asignatura
      @baja_asignatura = BajaAsignatura.new(baja_asignatura_params)
    end

    def validar_consejero_params
      params.require(:baja_asignatura).permit(:valida_consejero)
    end

    def validar_coordinador_params
      params.require(:baja_asignatura).permit(:valida_coordinador)
    end

    def cambiar_estado_params
      params.require(:baja_asignatura).permit(:estado)
    end

end
