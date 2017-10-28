class AlumnosController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @agregar_asignaturas = current_user.agregar_asignaturas
    @baja_asignaturas = current_user.baja_asignaturas
    @baja_programas = current_user.baja_programas
    @cambiar_asignaturas = current_user.cambiar_asignaturas
    @cambiar_consejeros = current_user.cambiar_consejeros
    @cambiar_temas = current_user.cambiar_temas
    @comite_registros = current_user.comite_registros
    @cursar_asignaturas = current_user.cursar_asignaturas
    @examen_graduados = current_user.examen_graduados
    @receso_semestres = current_user.receso_semestres
    @tesis_registros = current_user.tesis_registros
    @revocacion_registros = current_user.revocacion_registros
  end
end
