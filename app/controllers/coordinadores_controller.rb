class CoordinadoresController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  def index
    #if current_user.sepi_programa.nombre.include?("Eléctrica")
    @agregar_asignaturas = AgregarAsignatura.all.order("created_at DESC")
    @baja_asignaturas = BajaAsignatura.all.order("created_at DESC")
    @baja_programas = BajaPrograma.all.order("created_at DESC")
    @cambiar_asignaturas = CambiarAsignatura.all.order("created_at DESC")
    @cambiar_consejeros = CambiarConsejero.all.order("created_at DESC")
    @cambiar_temas = CambiarTema.all.order("created_at DESC")
    @comite_registros = ComiteRegistro.all.order("created_at DESC")
    @cursar_asignaturas = CursarAsignatura.all.order("created_at DESC")
    @examen_graduados = ExamenGraduado.all.order("created_at DESC")
    @receso_semestres = RecesoSemestre.all.order("created_at DESC")
    @tesis_registros = TesisRegistro.all.order("created_at DESC")
  end
  
  def asigna_validacion_coordinador
  agregar_asignatura = AgregarAsignatura.find params[:agregar_asignatura_id]
  if agregar_asignatura.valida_coordinador #if local is premium, we set it to false
    agregar_asignatura.udpdate_attributes(:valida_coordinador => false)
    @message = "true"
  else
    agregar_asignatura.udpdate_attributes(:valida_coordinador => true)
    @message = "false"
  end
  respond_to do |format|
     format.js
  end
end
end
