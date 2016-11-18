class BuscarMinutasController < ApplicationController

  def busqueda
    if params[:inicio] and params[:fin]
      @electrica_agregar_asignaturas = electrica_agregar_asignaturas
      @electrica_baja_asignaturas = electrica_baja_asignaturas
      @electrica_baja_programas = electrica_baja_programas
      @electrica_cambiar_asignaturas = electrica_cambiar_asignaturas
      @electrica_cambiar_consejeros = electrica_cambiar_consejeros
      @electrica_cambiar_temas = electrica_cambiar_temas
      @electrica_cursar_asignaturas = electrica_cursar_asignaturas
      @electrica_examen_graduados = electrica_examen_graduados
      @electrica_receso_semestres = electrica_receso_semestres
      @electrica_comite_registros = electrica_comite_registros
      @electrica_tesis_registros = electrica_tesis_registros
      @electronica_agregar_asignaturas = electronica_agregar_asignaturas
      @electronica_baja_asignaturas = electronica_baja_asignaturas
      @electronica_baja_programas = electronica_baja_programas
      @electronica_cambiar_asignaturas = electronica_cambiar_asignaturas
      @electronica_cambiar_consejeros = electronica_cambiar_consejeros
      @electronica_cambiar_temas = electronica_cambiar_temas
      @electronica_cursar_asignaturas = electronica_cursar_asignaturas
      @electronica_examen_graduados = electronica_examen_graduados
      @electronica_receso_semestres = electronica_receso_semestres
      @electronica_comite_registros = electronica_comite_registros
      @electronica_tesis_registros = electronica_tesis_registros
      @mecanica_agregar_asignaturas = mecanica_agregar_asignaturas
      @mecanica_baja_asignaturas = mecanica_baja_asignaturas
      @mecanica_baja_programas = mecanica_baja_programas
      @mecanica_cambiar_asignaturas = mecanica_cambiar_asignaturas
      @mecanica_cambiar_consejeros = mecanica_cambiar_consejeros
      @mecanica_cambiar_temas = mecanica_cambiar_temas
      @mecanica_cursar_asignaturas = mecanica_cursar_asignaturas
      @mecanica_examen_graduados = mecanica_examen_graduados
      @mecanica_receso_semestres = mecanica_receso_semestres
      @mecanica_comite_registros = mecanica_comite_registros
      @mecanica_tesis_registros = mecanica_tesis_registros
      @sistemas_agregar_asignaturas = sistemas_agregar_asignaturas
      @sistemas_baja_asignaturas = sistemas_baja_asignaturas
      @sistemas_baja_programas = sistemas_baja_programas
      @sistemas_cambiar_asignaturas = sistemas_cambiar_asignaturas
      @sistemas_cambiar_consejeros = sistemas_cambiar_consejeros
      @sistemas_cambiar_temas = sistemas_cambiar_temas
      @sistemas_cursar_asignaturas = sistemas_cursar_asignaturas
      @sistemas_examen_graduados = sistemas_examen_graduados
      @sistemas_receso_semestres = sistemas_receso_semestres
      @sistemas_comite_registros = sistemas_comite_registros
      @sistemas_tesis_registros = sistemas_tesis_registros
      @telecom_agregar_asignaturas = telecom_agregar_asignaturas
      @telecom_baja_asignaturas = telecom_baja_asignaturas
      @telecom_baja_programas = telecom_baja_programas
      @telecom_cambiar_asignaturas = telecom_cambiar_asignaturas
      @telecom_cambiar_consejeros = telecom_cambiar_consejeros
      @telecom_cambiar_temas = telecom_cambiar_temas
      @telecom_cursar_asignaturas = telecom_cursar_asignaturas
      @telecom_examen_graduados = telecom_examen_graduados
      @telecom_receso_semestres = telecom_receso_semestres
      @telecom_comite_registros = telecom_comite_registros
      @telecom_tesis_registros = telecom_tesis_registros
    else
      @agregar_asignaturas = AgregarAsignatura.all.order('created_at DESC')
    end
  end

  def electrica_agregar_asignaturas
    @agregar_asignaturas = AgregarAsignatura.electrica_agregar_asignaturas(params[:inicio], params[:fin])
  end

  def electrica_baja_asignaturas
    @baja_asignaturas = BajaAsignatura.electrica_baja_asignaturas(params[:inicio], params[:fin])
  end

  def electrica_baja_programas
    @baja_programas = BajaPrograma.electrica_baja_programas(params[:inicio], params[:fin])
  end

  def electrica_cambiar_asignaturas
    @cambiar_asignaturas = CambiarAsignatura.electrica_cambiar_asignaturas(params[:inicio], params[:fin])
  end

  def electrica_cambiar_consejeros
    @cambiar_consejeros = CambiarConsejero.electrica_cambiar_consejeros(params[:inicio], params[:fin])
  end

  def electrica_cambiar_temas
    @cambiar_temas = CambiarTema.electrica_cambiar_temas(params[:inicio], params[:fin])
  end

  def electrica_cursar_asignaturas
    @cursar_asignaturas = CursarAsignatura.electrica_cursar_asignaturas(params[:inicio], params[:fin])
  end

  def electrica_examen_graduados
    @examen_graduados = ExamenGraduado.electrica_examen_graduados(params[:inicio], params[:fin])
  end

  def electrica_receso_semestres
    @receso_semestres = RecesoSemestre.electrica_receso_semestres(params[:inicio], params[:fin])
  end

  def electrica_comite_registros
    @comite_registros = ComiteRegistro.electrica_comite_registros(params[:inicio], params[:fin])
  end

  def electrica_tesis_registros
    @tesis_registros = TesisRegistro.electrica_tesis_registros(params[:inicio], params[:fin])
  end

  def electronica_agregar_asignaturas
    @agregar_asignaturas = AgregarAsignatura.electronica_agregar_asignaturas(params[:inicio], params[:fin])
  end

  def electronica_baja_asignaturas
    @baja_asignaturas = BajaAsignatura.electronica_baja_asignaturas(params[:inicio], params[:fin])
  end

  def electronica_baja_programas
    @baja_programas = BajaPrograma.electronica_baja_programas(params[:inicio], params[:fin])
  end

  def electronica_cambiar_asignaturas
    @cambiar_asignaturas = CambiarAsignatura.electronica_cambiar_asignaturas(params[:inicio], params[:fin])
  end

  def electronica_cambiar_consejeros
    @cambiar_consejeros = CambiarConsejero.electronica_cambiar_consejeros(params[:inicio], params[:fin])
  end

  def electronica_cambiar_temas
    @cambiar_temas = CambiarTema.electronica_cambiar_temas(params[:inicio], params[:fin])
  end

  def electronica_cursar_asignaturas
    @cursar_asignaturas = CursarAsignatura.electronica_cursar_asignaturas(params[:inicio], params[:fin])
  end

  def electronica_examen_graduados
    @examen_graduados = ExamenGraduado.electronica_examen_graduados(params[:inicio], params[:fin])
  end

  def electronica_receso_semestres
    @receso_semestres = RecesoSemestre.electronica_receso_semestres(params[:inicio], params[:fin])
  end

  def electronica_comite_registros
    @comite_registros = ComiteRegistro.electronica_comite_registros(params[:inicio], params[:fin])
  end

  def electronica_tesis_registros
    @tesis_registros = TesisRegistro.electronica_tesis_registros(params[:inicio], params[:fin])
  end

  def mecanica_agregar_asignaturas
    @agregar_asignaturas = AgregarAsignatura.mecanica_agregar_asignaturas(params[:inicio], params[:fin])
  end

  def mecanica_baja_asignaturas
    @baja_asignaturas = BajaAsignatura.mecanica_baja_asignaturas(params[:inicio], params[:fin])
  end

  def mecanica_baja_programas
    @baja_programas = BajaPrograma.mecanica_baja_programas(params[:inicio], params[:fin])
  end

  def mecanica_cambiar_asignaturas
    @cambiar_asignaturas = CambiarAsignatura.mecanica_cambiar_asignaturas(params[:inicio], params[:fin])
  end

  def mecanica_cambiar_consejeros
    @cambiar_consejeros = CambiarConsejero.mecanica_cambiar_consejeros(params[:inicio], params[:fin])
  end

  def mecanica_cambiar_temas
    @cambiar_temas = CambiarTema.mecanica_cambiar_temas(params[:inicio], params[:fin])
  end

  def mecanica_cursar_asignaturas
    @cursar_asignaturas = CursarAsignatura.mecanica_cursar_asignaturas(params[:inicio], params[:fin])
  end

  def mecanica_examen_graduados
    @examen_graduados = ExamenGraduado.mecanica_examen_graduados(params[:inicio], params[:fin])
  end

  def mecanica_receso_semestres
    @receso_semestres = RecesoSemestre.mecanica_receso_semestres(params[:inicio], params[:fin])
  end

  def mecanica_comite_registros
    @comite_registros = ComiteRegistro.mecanica_comite_registros(params[:inicio], params[:fin])
  end

  def mecanica_tesis_registros
    @tesis_registros = TesisRegistro.mecanica_tesis_registros(params[:inicio], params[:fin])
  end

  def sistemas_agregar_asignaturas
    @agregar_asignaturas = AgregarAsignatura.sistemas_agregar_asignaturas(params[:inicio], params[:fin])
  end

  def sistemas_baja_asignaturas
    @baja_asignaturas = BajaAsignatura.sistemas_baja_asignaturas(params[:inicio], params[:fin])
  end

  def sistemas_baja_programas
    @baja_programas = BajaPrograma.sistemas_baja_programas(params[:inicio], params[:fin])
  end

  def sistemas_cambiar_asignaturas
    @cambiar_asignaturas = CambiarAsignatura.sistemas_cambiar_asignaturas(params[:inicio], params[:fin])
  end

  def sistemas_cambiar_consejeros
    @cambiar_consejeros = CambiarConsejero.sistemas_cambiar_consejeros(params[:inicio], params[:fin])
  end

  def sistemas_cambiar_temas
    @cambiar_temas = CambiarTema.sistemas_cambiar_temas(params[:inicio], params[:fin])
  end

  def sistemas_cursar_asignaturas
    @cursar_asignaturas = CursarAsignatura.sistemas_cursar_asignaturas(params[:inicio], params[:fin])
  end

  def sistemas_examen_graduados
    @examen_graduados = ExamenGraduado.sistemas_examen_graduados(params[:inicio], params[:fin])
  end

  def sistemas_receso_semestres
    @receso_semestres = RecesoSemestre.sistemas_receso_semestres(params[:inicio], params[:fin])
  end

  def sistemas_comite_registros
    @comite_registros = ComiteRegistro.sistemas_comite_registros(params[:inicio], params[:fin])
  end

  def sistemas_tesis_registros
    @tesis_registros = TesisRegistro.sistemas_tesis_registros(params[:inicio], params[:fin])
  end

  def telecom_agregar_asignaturas
    @agregar_asignaturas = AgregarAsignatura.telecom_agregar_asignaturas(params[:inicio], params[:fin])
  end

  def telecom_baja_asignaturas
    @baja_asignaturas = BajaAsignatura.telecom_baja_asignaturas(params[:inicio], params[:fin])
  end

  def telecom_baja_programas
    @baja_programas = BajaPrograma.telecom_baja_programas(params[:inicio], params[:fin])
  end

  def telecom_cambiar_asignaturas
    @cambiar_asignaturas = CambiarAsignatura.telecom_cambiar_asignaturas(params[:inicio], params[:fin])
  end

  def telecom_cambiar_consejeros
    @cambiar_consejeros = CambiarConsejero.telecom_cambiar_consejeros(params[:inicio], params[:fin])
  end

  def telecom_cambiar_temas
    @cambiar_temas = CambiarTema.telecom_cambiar_temas(params[:inicio], params[:fin])
  end

  def telecom_cursar_asignaturas
    @cursar_asignaturas = CursarAsignatura.telecom_cursar_asignaturas(params[:inicio], params[:fin])
  end

  def telecom_examen_graduados
    @examen_graduados = ExamenGraduado.telecom_examen_graduados(params[:inicio], params[:fin])
  end

  def telecom_receso_semestres
    @receso_semestres = RecesoSemestre.telecom_receso_semestres(params[:inicio], params[:fin])
  end

  def telecom_comite_registros
    @comite_registros = ComiteRegistro.telecom_comite_registros(params[:inicio], params[:fin])
  end

  def telecom_tesis_registros
    @tesis_registros = TesisRegistro.telecom_tesis_registros(params[:inicio], params[:fin])
  end

end
