class CambiarTemasController < ApplicationController
  before_action :authenticate_user!
  before_action :cambiar_tema, only: :create
  load_and_authorize_resource

  # GET /cambiar_temas
  # GET /cambiar_temas.json
  def index
    @cambiar_temas = CambiarTema.all
  end

  # GET /cambiar_temas/1
  # GET /cambiar_temas/1.json
  def show
  end

  # GET /cambiar_temas/new
  def new
    @cambiar_tema = current_user.cambiar_temas.build
  end

  # GET /cambiar_temas/1/edit
  def edit
  end

  # POST /cambiar_temas
  # POST /cambiar_temas.json
  def create
    @cambiar_tema = current_user.cambiar_temas.build(cambiar_tema_params)
    if @cambiar_tema.save
      flash[:success] = "Su petición para cambiar tema de tesis ha sido creada!"
      redirect_to cambiar_temas_path
    else
      flash[:alert] = "Su petición para cambiar tema de tesis no pudo crearse! Revise el formulario."
      render :new
    end
  end

  # PATCH/PUT /cambiar_temas/1
  # PATCH/PUT /cambiar_temas/1.json
  def update
    respond_to do |format|
      if @cambiar_tema.update(cambiar_tema_params)
        format.html { redirect_to @cambiar_tema, notice: 'Su petición para cambiar de tema de tesis fue actualizada.' }
        format.json { render :show, status: :ok, location: @cambiar_tema }
      else
        format.html { render :edit }
        format.json { render json: @cambiar_tema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cambiar_temas/1
  # DELETE /cambiar_temas/1.json
  def destroy
    @cambiar_tema.destroy
    respond_to do |format|
      format.html { redirect_to cambiar_temas_url, notice: 'Su petición para cambiar de tema de tesis fue eliminada.' }
      format.json { head :no_content }
    end
  end

  def validar_consejero
    if @cambiar_tema.update(validar_consejero_params)
      format.html { redirect_to @cambiar_tema, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @cambiar_tema }
    else
      format.html { render :edit }
      format.json { render json: @cambiar_tema.errors, status: :unprocessable_entity }
    end
  end

  def validar_coordinador
    if @cambiar_tema.update(validar_coordinador_params)
      format.html { redirect_to @cambiar_tema, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @cambiar_tema }
    else
      format.html { render :edit }
      format.json { render json: @cambiar_tema.errors, status: :unprocessable_entity }
    end
  end

  def cambiar_estado
    if @cambiar_tema.update(cambiar_estado_params)
      format.html { redirect_to @cambiar_tema, notice: 'La petición ha cambiado de estado.' }
      format.json { render :show, status: :ok, location: @cambiar_tema }
    else
      format.html { render :edit }
      format.json { render json: @cambiar_tema.errors, status: :unprocessable_entity }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def cambiar_tema_params
      params.require(:cambiar_tema).permit(:anterior, :actual, :valida_consejero, :valida_coordinador, :estado)
    end

    def cambiar_tema
      @cambiar_tema = CambiarTema.new(cambiar_tema_params)
    end

    def validar_consejero_params
      params.require(:cambiar_tema).permit(:valida_consejero)
    end

    def validar_coordinador_params
      params.require(:cambiar_tema).permit(:valida_coordinador)
    end

    def cambiar_estado_params
      params.require(:cambiar_tema).permit(:estado)
    end
end
