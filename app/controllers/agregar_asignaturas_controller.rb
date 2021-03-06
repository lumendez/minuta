class AgregarAsignaturasController < ApplicationController
  before_action :authenticate_user!
  before_action :agregar_asignatura, only: :create
  load_and_authorize_resource

  # GET /agregar_asignaturas
  # GET /agregar_asignaturas.json
  def index
    @filterrific = initialize_filterrific(
    AgregarAsignatura,
    params[:filterrific],
    select_options:{
      sorted_by: AgregarAsignatura.options_for_sorted_by
    },
    ) or return
    #@inscripcion_registros = @filterrific.find.order("created_at DESC").where(examen_medio: nil, examen_final: nil).page(params[:pagina])
    @agregar_asignaturas = @filterrific.find.order("created_at DESC").page(params[:pagina])

    respond_to do |format|
      format.html
      format.js
    end

    rescue ActiveRecord::RecordNotFound => e
    # There is an issue with the persisted param_set. Reset it.
    puts "Se tuvieron que restablecer los valores: #{ e.message }"
    redirect_to(reset_filterrific_url(format: :html)) and return
  end

  # GET /agregar_asignaturas/1
  # GET /agregar_asignaturas/1.json
  def show
  end

  # GET /agregar_asignaturas/new
  def new
    if current_user.sepi_programa.nil?
      redirect_to alumnos_path, alert: "Necesita pertenecer a un programa de posgrado para esta acción"
    else
      @agregar_asignatura = current_user.agregar_asignaturas.build
    end
  end

  # GET /agregar_asignaturas/1/edit
  def edit
  end

  # POST /agregar_asignaturas
  # POST /agregar_asignaturas.json
  def create
    @agregar_asignatura = current_user.agregar_asignaturas.build(agregar_asignatura_params)

    if @agregar_asignatura.save
      flash[:success] = "Su solicitud para agregar una asignatura a su programa individual de actividades fue creada!"
      if current_user.tipos_usuario.tipo == "Alumno"
        redirect_to alumnos_path
      else
        redirect_to root_path
      end
    else
      flash[:alert] = "Su solicitud para agregar una asignatura a su programa individual de actividades no puse ser creada! Revise el formulario."
      render :new
    end
  end

  # PATCH/PUT /agregar_asignaturas/1
  # PATCH/PUT /agregar_asignaturas/1.json
  def update
    respond_to do |format|
      if @agregar_asignatura.update(agregar_asignatura_params)
        format.html { redirect_to @agregar_asignatura, notice: 'La asignatura se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @agregar_asignatura }
      else
        format.html { render :edit }
        format.json { render json: @agregar_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agregar_asignaturas/1
  # DELETE /agregar_asignaturas/1.json
  def destroy
    @agregar_asignatura.destroy
    respond_to do |format|
      format.html { redirect_to agregar_asignaturas_url, notice: 'La asignatura se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  def validar_consejero
    if @agregar_asignatura.update(validar_consejero_params)
      format.html { redirect_to @agregar_asignatura, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @agregar_asignatura }
    else
      format.html { render :edit }
      format.json { render json: @agregar_asignatura.errors, status: :unprocessable_entity }
    end
  end

  def validar_coordinador
    if @agregar_asignatura.update(validar_coordinador_params)
      format.html { redirect_to @agregar_asignatura, notice: 'La validación cambió de estado.' }
      format.json { render :show, status: :ok, location: @agregar_asignatura }
    else
      format.html { render :edit }
      format.json { render json: @agregar_asignatura.errors, status: :unprocessable_entity }
    end
  end

  def cambiar_estado
    if @agregar_asignatura.update(cambiar_estado_params)
      format.html { redirect_to @agregar_asignatura, notice: 'La petición ha cambiado de estado.' }
      format.json { render :show, status: :ok, location: @agregar_asignatura }
    else
      format.html { render :edit }
      format.json { render json: @agregar_asignatura.errors, status: :unprocessable_entity }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def agregar_asignatura_params
      params.require(:agregar_asignatura).permit(:nombre, :clave, :valida_consejero, :valida_coordinador, :estado)
    end

    def agregar_asignatura
      @agregar_asignatura = AgregarAsignatura.new(agregar_asignatura_params)
    end

    def validar_consejero_params
      params.require(:agregar_asignatura).permit(:valida_consejero)
    end

    def validar_coordinador_params
      params.require(:agregar_asignatura).permit(:valida_coordinador)
    end

    def cambiar_estado_params
      params.require(:agregar_asignatura).permit(:estado)
    end
end
