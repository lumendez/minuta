class RecesoSemestresController < ApplicationController
  before_action :authenticate_user!
  before_action :receso_semestre, only: :create
  load_and_authorize_resource

  # GET /receso_semestres
  # GET /receso_semestres.json
  def index
    @receso_semestres = RecesoSemestre.all
  end

  # GET /receso_semestres/1
  # GET /receso_semestres/1.json
  def show
  end

  # GET /receso_semestres/new
  def new
    @receso_semestre = current_user.receso_semestres.build
  end

  # GET /receso_semestres/1/edit
  def edit
  end

  # POST /receso_semestres
  # POST /receso_semestres.json
  def create
    @receso_semestre = current_user.receso_semestres.build(receso_semestre_params)

    if @receso_semestre.save
      flash[:success] = "Su petición para solicitar un receso por un semestre fue creada!"
      redirect_to receso_semestres_path
    else
      flash[:alert] = "Su petición para solicitar un receso por un semestre no pudo ser creada! Revise el formulario."
      render :new
    end
  end

  # PATCH/PUT /receso_semestres/1
  # PATCH/PUT /receso_semestres/1.json
  def update
    respond_to do |format|
      if @receso_semestre.update(receso_semestre_params)
        format.html { redirect_to @receso_semestre, notice: 'Receso semestre was successfully updated.' }
        format.json { render :show, status: :ok, location: @receso_semestre }
      else
        format.html { render :edit }
        format.json { render json: @receso_semestre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receso_semestres/1
  # DELETE /receso_semestres/1.json
  def destroy
    @receso_semestre.destroy
    respond_to do |format|
      format.html { redirect_to receso_semestres_url, notice: 'Receso semestre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def validar_consejero
    if @receso_semestre.update(validar_consejero_params)
      format.html { redirect_to @receso_semestre, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @receso_semestre }
    else
      format.html { render :edit }
      format.json { render json: @receso_semestre.errors, status: :unprocessable_entity }
    end
  end

  def validar_coordinador
    if @receso_semestre.update(validar_coordinador_params)
      format.html { redirect_to @receso_semestre, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @receso_semestre }
    else
      format.html { render :edit }
      format.json { render json: @receso_semestre.errors, status: :unprocessable_entity }
    end
  end

  def cambiar_estado
    if @receso_semestre.update(cambiar_estado_params)
      format.html { redirect_to @receso_semestre, notice: 'La petición ha cambiado de estado.' }
      format.json { render :show, status: :ok, location: @receso_semestre }
    else
      format.html { render :edit }
      format.json { render json: @receso_semestre.errors, status: :unprocessable_entity }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def receso_semestre_params
      params.require(:receso_semestre).permit(:semestre, :valida_consejero, :valida_coordinador, :estado)
    end

    def receso_semestre
      @receso_semestre = RecesoSemestre.new(receso_semestre_params)
    end

    def validar_consejero_params
      params.require(:receso_semestre).permit(:valida_consejero)
    end

    def validar_coordinador_params
      params.require(:receso_semestre).permit(:valida_coordinador)
    end

    def cambiar_estado_params
      params.require(:receso_semestre).permit(:estado)
    end
end
