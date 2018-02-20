class CambiarTemasController < ApplicationController
  before_action :authenticate_user!
  before_action :cambiar_tema, only: :create
  load_and_authorize_resource

  # GET /cambiar_temas
  # GET /cambiar_temas.json
  def index
    @filterrific = initialize_filterrific(
    CambiarTema,
    params[:filterrific],
    select_options:{
      sorted_by: CambiarTema.options_for_sorted_by
    },
    ) or return
    @cambiar_temas = @filterrific.find.where(revisado: false).order("created_at DESC").page(params[:pagina])

    respond_to do |format|
      format.html
      format.js
    end

    rescue ActiveRecord::RecordNotFound => e
    # There is an issue with the persisted param_set. Reset it.
    puts "Se tuvieron que restablecer los valores: #{ e.message }"
    redirect_to(reset_filterrific_url(format: :html)) and return
  end

  # GET /cambiar_temas/1
  # GET /cambiar_temas/1.json
  def show
  end

  # GET /cambiar_temas/new
  def new
    if current_user.sepi_programa.nil?
      redirect_to alumnos_path, alert: "Necesita pertenecer a un programa de posgrado para esta acción"
    else
      if current_user.tema_tesis_registros.present?
        @tema_anterior = current_user.tema_tesis_registros.last
        @cambiar_tema = current_user.cambiar_temas.build
      else
        redirect_to alumnos_path, alert: "Necesita haber registrado un tema de tesis para esta acción"
      end
    end
  end

  # GET /cambiar_temas/1/edit
  def edit
    @tema_anterior = TemaTesisRegistro.find_by(user_id: @cambiar_tema.user.id)
  end

  # POST /cambiar_temas
  # POST /cambiar_temas.json
  def create
    @cambiar_tema = current_user.cambiar_temas.build(cambiar_tema_params)
    if @cambiar_tema.save
      flash[:success] = "Su petición para cambiar tema de tesis ha sido creada!"
      if current_user.tipos_usuario.tipo == "Alumno"
        redirect_to alumnos_path
      else
        redirect_to root_path
      end
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

  def marcar
    @cambiar_tema.toggle!(:revisado)
  end

  def toggle_validar_coordinador
    @cambiar_tema.toggle!(:valida_coordinador)
  end

  def toggle_validar_consejero
    @cambiar_tema.toggle!(:valida_consejero)
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def cambiar_tema_params
      params.require(:cambiar_tema).permit(:anterior, :actual, :valida_consejero, :valida_coordinador, :estado, :user_id, :revisado)
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
