class SistemasCasosController < ApplicationController
  def index
    @agregar_asignaturas = AgregarAsignatura.joins(:user).where("area = 'Sistemas'").order("created_at DESC")
    @baja_asignaturas = BajaAsignatura.joins(:user).where("area = 'Sistemas'").order("created_at DESC")
    @baja_programas = BajaPrograma.joins(:user).where("area = 'Sistemas'").order("created_at DESC")
    @cambiar_asignaturas = CambiarAsignatura.joins(:user).where("area = 'Sistemas'").order("created_at DESC")
    @cambiar_consejeros = CambiarConsejero.joins(:user).where("area = 'Sistemas'").order("created_at DESC")
    @cambiar_temas = CambiarTema.joins(:user).where("area = 'Sistemas'").order("created_at DESC")
    @comite_registros = ComiteRegistro.joins(:user).where("area = 'Sistemas'").order("created_at DESC")
    @cursar_asignaturas = CursarAsignatura.joins(:user).where("area = 'Sistemas'").order("created_at DESC")
    @examen_graduados = ExamenGraduado.joins(:user).where("area = 'Sistemas'").order("created_at DESC")
    @receso_semestres = RecesoSemestre.joins(:user).where("area = 'Sistemas'").order("created_at DESC")
    @tesis_registros = TesisRegistro.joins(:user).where("area = 'Sistemas'").order("created_at DESC")
  end
end
