class CoordinadoresController < ApplicationController

  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @agregar_asignaturas = AgregarAsignatura.all
    @baja_asignaturas = BajaAsignatura.all
    @baja_programas = BajaPrograma.all
    @cambiar_asignaturas = CambiarAsignatura.all
    @cambiar_consejeros = CambiarConsejero.all
    @cambiar_temas = CambiarTema.all
    @comision_registros = ComisionRegistro.all
    @cambio_comision_registros = CambioComisionRegistro.all
    @comite_registros = ComiteRegistro.all
    @cambio_comite_registros = CambioComiteRegistro.all
    @cursar_asignaturas = CursarAsignatura.all
    @examen_graduados = ExamenGraduado.all
    @receso_semestres = RecesoSemestre.all
    @director_tesis_registros = DirectorTesisRegistro.all
    @cambio_director_tesis_registros = CambioDirectorTesisRegistro.all
    @tema_tesis_registros = TemaTesisRegistro.all
    @revocacion_registros = RevocacionRegistro.all
  end

end
