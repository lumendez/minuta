class ConsejeroCasosController < ApplicationController

  before_action :authenticate_user!
  load_and_authorize_resource

  # Para el panel de consejeros se buscan aquellos registros donde el alumno
  # que realice la peticion tenga un id igual al del consejero que inicia
  # sesión.
  
  def index
    @agregar_asignaturas = AgregarAsignatura.includes(:user).where(:users => {consejero_id: current_user.id})
    @baja_asignaturas = BajaAsignatura.includes(:user).where(:users => {consejero_id: current_user.id})
    @baja_programas = BajaPrograma.includes(:user).where(:users => {consejero_id: current_user.id})
    @cambiar_asignaturas = CambiarAsignatura.includes(:user).where(:users => {consejero_id: current_user.id})
    @cambiar_consejeros = CambiarConsejero.includes(:user).where(:users => {consejero_id: current_user.id})
    @cambiar_temas = CambiarTema.includes(:user).where(:users => {consejero_id: current_user.id})
    @comision_registros = ComisionRegistro.includes(:user).where(:users => {consejero_id: current_user.id})
    @cambio_comision_registros = CambioComisionRegistro.includes(:user).where(:users => {consejero_id: current_user.id})
    @comite_registros = ComiteRegistro.includes(:user).where(:users => {consejero_id: current_user.id})
    @cambio_comite_registros = CambioComiteRegistro.includes(:user).where(:users => {consejero_id: current_user.id})
    @cursar_asignaturas = CursarAsignatura.includes(:user).where(:users => {consejero_id: current_user.id})
    @examen_graduados = ExamenGraduado.includes(:user).where(:users => {consejero_id: current_user.id})
    @receso_semestres = RecesoSemestre.includes(:user).where(:users => {consejero_id: current_user.id})
    @director_tesis_registros = DirectorTesisRegistro.includes(:user).where(:users => {consejero_id: current_user.id})
    @cambio_director_tesis_registros = CambioDirectorTesisRegistro.includes(:user).where(:users => {consejero_id: current_user.id})
    @tema_tesis_registros = TemaTesisRegistro.includes(:user).where(:users => {consejero_id: current_user.id})
    @revocacion_registros = RevocacionRegistro.includes(:user).where(:users => {consejero_id: current_user.id})
  end

end
