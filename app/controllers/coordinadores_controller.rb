class CoordinadoresController < ApplicationController
  def index
    @agregar_asignaturas = AgregarAsignatura.all
    @baja_asignaturas = BajaAsignatura.all
    @baja_programas = BajaPrograma.all
    @cambiar_asignaturas = CambiarAsignatura.all
    @cambiar_consejeros = CambiarConsejero.all
    @cambiar_temas = CambiarTema.all
    @comite_registros = ComiteRegistro.all
    @cursar_asignaturas = CursarAsignatura.all
    @examen_graduados = ExamenGraduado.all
    @receso_semestres = RecesoSemestre.all
    @tesis_registros = TesisRegistro.all
  end
end
