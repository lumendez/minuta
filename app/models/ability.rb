class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
    elsif user.control_escolar?
      can :read, CeUsuario
      can :read, ElectricaCaso
      can :read, ElectronicaCaso
      can :read, MecanicaCaso
      can :read, SistemasCaso
      can :read, TelecomCaso
      #Peticiones
      can :read, AgregarAsignatura
      can :update, AgregarAsignatura
      can :cambiar_estado, AgregarAsignatura do |agregar_asignatura|
        agregar_asignatura.try(:estado)
      end
      can :read, BajaAsignatura
      can :update, BajaAsignatura
      can :cambiar_estado, BajaAsignatura do |baja_asignatura|
        baja_asignatura.try(:estado)
      end
      can :read, BajaPrograma
      can :update, BajaPrograma
      can :cambiar_estado, BajaPrograma do |baja_programa|
        baja_programa.try(:estado)
      end
      can :read, CambiarAsignatura
      can :update, CambiarAsignatura
      can :cambiar_estado, CambiarAsignatura do |cambiar_asignatura|
        cambiar_asignatura.try(:estado)
      end
      can :read, CambiarConsejero
      can :update, CambiarConsejero
      can :cambiar_estado, CambiarConsejero do |agregar_asignatura|
        agregar_asignatura.try(:estado)
      end
      can :read, CambiarTema
      can :update, CambiarTema
      can :cambiar_estado, CambiarTema do |cambiar_tema|
        cambiar_tema.try(:estado)
      end
      can :read, CambioComisionRegistro
      can :update, CambioComisionRegistro
      can :cambiar_estado, CambioComisionRegistro do |cambio_comision_registro|
        cambio_comision_registro.try(:estado)
      end
      can :read, ComisionRegistro
      can :update, ComisionRegistro
      can :cambiar_estado, ComisionRegistro do |comision_registro|
        comision_registro.try(:estado)
      end
      can :read, CambioComiteRegistro
      can :update, CambioComiteRegistro
      can :cambiar_estado, ComiteRegistro do |cambio_comite_registro|
        cambio_comite_registro.try(:estado)
      end
      can :read, ComiteRegistro
      can :update, ComiteRegistro
      can :cambiar_estado, ComiteRegistro do |comite_registro|
        comite_registro.try(:estado)
      end
      can :read, CursarAsignatura
      can :update, CursarAsignatura
      can :cambiar_estado, CursarAsignatura do |cursar_asignatura|
        cursar_asignatura.try(:estado)
      end
      can :read, ExamenGraduado
      can :update, ExamenGraduado
      can :cambiar_estado, ExamenGraduado do |examen_graduado|
        examen_graduado.try(:estado)
      end
      can :read, RecesoSemestre
      can :update, RecesoSemestre
      can :cambiar_estado, RecesoSemestre do |receso_semestre|
        receso_semestre.try(:estado)
      end
      can :read, CambioDirectorTesisRegistro
      can :update, CambioDirectorTesisRegistro
      can :cambiar_estado, CambioDirectorTesisRegistro do |cambio_director_tesis_registro|
        cambio_director_tesis_registro.try(:estado)
      end
      can :read, DirectorTesisRegistro
      can :update, DirectorTesisRegistro
      can :cambiar_estado, DirectorTesisRegistro do |director_tesis_registro|
        director_tesis_registro.try(:estado)
      end
      can :read, TemaTesisRegistro
      can :update, TemaTesisRegistro
      can :cambiar_estado, TemaTesisRegistro do |tema_tesis_registro|
        tema_tesis_registro.try(:estado)
      end
      can :read, TesisRegistro
      can :update, TesisRegistro
      can :cambiar_estado, TesisRegistro do |tesis_registro|
        tesis_registro.try(:estado)
      end
      #Puede administrar
      can :read, Area
      can :update, Area
      can :create, Area
      can :destroy, Area
      can :read, ClaveSemestre
      can :update, ClaveSemestre
      can :create, ClaveSemestre
      can :destroy, ClaveSemestre
      can :read, Consejero
      can :update, Consejero
      can :create, Consejero
      can :destroy, Consejero
      can :read, CoordinadorNombre
      can :update, CoordinadorNombre
      can :create, CoordinadorNombre
      can :destroy, CoordinadorNombre
      can :read, ElectricaConsejero
      can :update, ElectricaConsejero
      can :create, ElectricaConsejero
      can :destroy, ElectricaConsejero
      can :read, ElectronicaConsejero
      can :update, ElectronicaConsejero
      can :create, ElectronicaConsejero
      can :destroy, ElectronicaConsejero
      can :read, MecanicaConsejero
      can :update, MecanicaConsejero
      can :create, MecanicaConsejero
      can :destroy, MecanicaConsejero
      can :read, SistemasConsejero
      can :update, SistemasConsejero
      can :create, SistemasConsejero
      can :destroy, SistemasConsejero
      can :read, TelecomConsejero
      can :update, TelecomConsejero
      can :create, TelecomConsejero
      can :destroy, TelecomConsejero
      can :read, Estado
      can :update, Estado
      can :create, Estado
      can :destroy, Estado
      can :read, ExamenTipo
      can :update, ExamenTipo
      can :create, ExamenTipo
      can :destroy, ExamenTipo
      can :read, SepiPrograma
      can :update, SepiPrograma
      can :create, SepiPrograma
      can :destroy, SepiPrograma
      can :read, TiposBaja
      can :update, TiposBaja
      can :create, TiposBaja
      can :destroy, TiposBaja
      can :read, ElectricaAsignatura
      can :update, ElectricaAsignatura
      can :create, ElectricaAsignatura
      can :destroy, ElectricaAsignatura
      can :read, ElectronicaAsignatura
      can :update, ElectronicaAsignatura
      can :create, ElectronicaAsignatura
      can :destroy, ElectronicaAsignatura
      can :read, MecanicaAsignatura
      can :update, MecanicaAsignatura
      can :create, MecanicaAsignatura
      can :destroy, MecanicaAsignatura
      can :read, SistemasAsignatura
      can :update, SistemasAsignatura
      can :create, SistemasAsignatura
      can :destroy, SistemasAsignatura
      can :read, TelecomAsignatura
      can :update, TelecomAsignatura
      can :create, TelecomAsignatura
      can :destroy, TelecomAsignatura
    # Comienzan las definiciones de los privilegios de los coordinadores en la
    # aplicación
    elsif user.coordinador?
      can :read, Coordinadore
      can :read, ElectricaCaso
      can :read, ElectronicaCaso
      can :read, MecanicaCaso
      can :read, SistemasCaso
      can :read, TelecomCaso
      #AgregarAsignatura
      can :read, AgregarAsignatura
      can :update, AgregarAsignatura
      can :validar_coordinador, AgregarAsignatura do |agregar_asignatura|
        agregar_asignatura.try(:valida_coordinador) == false || agregar_asignatura.try(:valida_coordinador) == true
      end
      #BajaAsignatura
      can :read, BajaAsignatura
      can :update, BajaAsignatura
      can :validar_coordinador, BajaAsignatura do |baja_asignatura|
        baja_asignatura.try(:valida_coordinador) == false || baja_asignatura.try(:valida_coordinador) == true
      end
      #BajaPrograma
      can :read, BajaPrograma
      can :update, BajaPrograma
      can :validar_coordinador, BajaPrograma do |baja_programa|
        baja_programa.try(:valida_coordinador) == false || baja_programa.try(:valida_coordinador) == true
      end
      #CambiarAsignatura
      can :read, CambiarAsignatura
      can :update, CambiarAsignatura
      can :validar_coordinador, CambiarAsignatura do |cambiar_asignatura|
        cambiar_asignatura.try(:valida_coordinador) == false || cambiar_asignatura.try(:valida_coordinador) == true
      end
      #CambiarConsejero
      can :read, CambiarConsejero
      can :update, CambiarConsejero
      can :validar_coordinador, CambiarConsejero do |cambiar_consejero|
        cambiar_consejero.try(:valida_coordinador) == false || cambiar_consejero.try(:valida_coordinador) == true
      end
      #CambiarTema
      can :read, CambiarTema
      can :update, CambiarTema
      can :validar_coordinador, CambiarTema do |cambiar_tema|
        cambiar_tema.try(:valida_coordinador) == false || cambiar_tema.try(:valida_coordinador) == true
      end
      can :toggle_validar_coordinador, CambiarTema
      #ComisionRegistro
      can :read, CambioComisionRegistro
      can :update, CambioComisionRegistro
      can :validar_coordinador, CambioComisionRegistro do |cambio_comision_registro|
        cambio_comision_registro.try(:valida_coordinador) == false || cambio_comision_registro.try(:valida_coordinador) == true
      end
      can :toggle_validar_coordinador, CambioComisionRegistro
      #ComisionRegistro
      can :read, ComisionRegistro
      can :update, ComisionRegistro
      can :validar_coordinador, ComisionRegistro do |comision_registro|
        comision_registro.try(:valida_coordinador) == false || comision_registro.try(:valida_coordinador) == true
      end
      can :toggle_validar_coordinador, ComisionRegistro
      #CambioComiteRegistro
      can :read, CambioComiteRegistro
      can :update, CambioComiteRegistro
      can :validar_coordinador, CambioComiteRegistro do |cambio_comite_registro|
        cambio_comite_registro.try(:valida_coordinador) == false || cambio_comite_registro.try(:valida_coordinador) == true
      end
      can :toggle_validar_coordinador, CambioComiteRegistro
      #ComiteRegistro
      can :read, ComiteRegistro
      can :update, ComiteRegistro
      can :validar_coordinador, ComiteRegistro do |comite_registro|
        comite_registro.try(:valida_coordinador) == false || comite_registro.try(:valida_coordinador) == true
      end
      can :toggle_validar_coordinador, ComiteRegistro
      #CursarAsignatura
      can :read, CursarAsignatura
      can :update, CursarAsignatura
      can :validar_coordinador, CursarAsignatura do |cursar_asignatura|
        cursar_asignatura.try(:valida_coordinador) == false || cursar_asignatura.try(:valida_coordinador) == true
      end
      #ExamenGraduado
      can :read, ExamenGraduado
      can :update, ExamenGraduado
      can :validar_coordinador, ExamenGraduado do |examen_graduado|
        examen_graduado.try(:valida_coordinador) == false || examen_graduado.try(:valida_coordinador) == true
      end
      #RecesoSemestre
      can :read, RecesoSemestre
      can :update, RecesoSemestre
      can :validar_coordinador, RecesoSemestre do |receso_semestre|
        receso_semestre.try(:valida_coordinador) == false || receso_semestre.try(:valida_coordinador) == true
      end
      #CambioDirectorTesisRegistro
      can :read, CambioDirectorTesisRegistro
      can :update, CambioDirectorTesisRegistro
      can :validar_coordinador, CambioDirectorTesisRegistro do |cambio_director_tesis_registro|
        cambio_director_tesis_registro.try(:valida_coordinador) == false || cambio_director_tesis_registro.try(:valida_coordinador) == true
      end
      can :toggle_validar_coordinador, CambioDirectorTesisRegistro
      #DirectorTesisRegistro
      can :read, DirectorTesisRegistro
      can :update, DirectorTesisRegistro
      can :validar_coordinador, DirectorTesisRegistro do |director_tesis_registro|
        director_tesis_registro.try(:valida_coordinador) == false || director_tesis_registro.try(:valida_coordinador) == true
      end
      can :toggle_validar_coordinador, DirectorTesisRegistro
      #TesisRegistro
      can :read, TemaTesisRegistro
      can :update, TemaTesisRegistro
      can :validar_consejero, TemaTesisRegistro do |tema_tesis_registro|
        tema_tesis_registro.try(:valida_consejero) == false || tema_tesis_registro.try(:valida_consejero) == true
      end
      can :toggle_validar_coordinador, TemaTesisRegistro
    # Comienzan las definiciones de los privilegios de los consejeros en la
    # aplicación
    elsif user.consejero?
      can :read, ConsejeroCaso
      #AgregarAsignatura
      can :read, AgregarAsignatura
      can :update, AgregarAsignatura
      can :validar_consejero, AgregarAsignatura do |agregar_asignatura|
        agregar_asignatura.try(:valida_consejero) == false || agregar_asignatura.try(:valida_consejero) == true
      end
      #BajaAsignatura
      can :read, BajaAsignatura
      can :update, BajaAsignatura
      can :validar_consejero, BajaAsignatura do |baja_asignatura|
        baja_asignatura.try(:valida_consejero) == false || baja_asignatura.try(:valida_consejero) == true
      end
      #BajaPrograma
      can :read, BajaPrograma
      can :update, BajaPrograma
      can :validar_consejero, BajaPrograma do |baja_programa|
        baja_programa.try(:valida_consejero) == false || baja_programa.try(:valida_consejero) == true
      end
      #CambiarAsignatura
      can :read, CambiarAsignatura
      can :update, CambiarAsignatura
      can :validar_consejero, CambiarAsignatura do |cambiar_asignatura|
        cambiar_asignatura.try(:valida_consejero) == false || cambiar_asignatura.try(:valida_consejero) == true
      end
      #CambiarConsejero
      can :read, CambiarConsejero
      can :update, CambiarConsejero
      can :validar_consejero, CambiarConsejero do |cambiar_consejero|
        cambiar_consejero.try(:valida_consejero) == false || cambiar_consejero.try(:valida_consejero) == true
      end
      #CambiarTema
      can :read, CambiarTema
      can :update, CambiarTema
      can :validar_consejero, CambiarTema do |cambiar_tema|
        cambiar_tema.try(:valida_consejero) == false || cambiar_tema.try(:valida_consejero) == true
      end
      can :toggle_validar_consejero, CambiarTema
      #CambioComisionRegistro
      can :read, CambioComisionRegistro
      can :update, CambioComisionRegistro
      can :validar_consejero, CambioComisionRegistro do |cambio_comision_registro|
        cambio_comision_registro.try(:valida_consejero) == false || cambio_comision_registro.try(:valida_consejero) == true
      end
      can :toggle_validar_consejero, CambioComisionRegistro
      #ComisionRegistro
      can :read, ComisionRegistro
      can :update, ComisionRegistro
      can :validar_consejero, ComisionRegistro do |comision_registro|
        comision_registro.try(:valida_consejero) == false || comision_registro.try(:valida_consejero) == true
      end
      can :toggle_validar_consejero, ComisionRegistro
      #ComiteRegistro
      can :read, CambioComiteRegistro
      can :update, CambioComiteRegistro
      can :validar_consejero, CambioComiteRegistro do |cambio_comite_registro|
        cambio_comite_registro.try(:valida_consejero) == false || cambio_comite_registro.try(:valida_consejero) == true
      end
      #ComiteRegistro
      can :read, ComiteRegistro
      can :update, ComiteRegistro
      can :validar_consejero, ComiteRegistro do |comite_registro|
        comite_registro.try(:valida_consejero) == false || comite_registro.try(:valida_consejero) == true
      end
      can :toggle_validar_consejero, ComiteRegistro
      #CursarAsignatura
      can :read, CursarAsignatura
      can :update, CursarAsignatura
      can :validar_consejero, CursarAsignatura do |cursar_asignatura|
        cursar_asignatura.try(:valida_consejero) == false || cursar_asignatura.try(:valida_consejero) == true
      end
      can :toggle_validar_consejero, CambioComiteRegistro
      #ExamenGraduado
      can :read, ExamenGraduado
      can :update, ExamenGraduado
      can :validar_consejero, ExamenGraduado do |examen_graduado|
        examen_graduado.try(:valida_consejero) == false || examen_graduado.try(:valida_consejero) == true
      end
      #ExamenGraduado
      can :read, RecesoSemestre
      can :update, RecesoSemestre
      can :validar_consejero, RecesoSemestre do |receso_semestre|
        receso_semestre.try(:valida_consejero) == false || receso_semestre.try(:valida_consejero) == true
      end
      #CambioDirectorTesisRegistro
      can :read, CambioDirectorTesisRegistro
      can :update, CambioDirectorTesisRegistro
      can :validar_consejero, CambioDirectorTesisRegistro do |cambio_director_tesis_registro|
        cambio_director_tesis_registro.try(:valida_consejero) == false || cambio_director_tesis_registro.try(:valida_consejero) == true
      end
      can :toggle_validar_consejero, CambioDirectorTesisRegistro
      #DirectorTesisRegistro
      can :read, DirectorTesisRegistro
      can :update, DirectorTesisRegistro
      can :validar_consejero, DirectorTesisRegistro do |director_tesis_registro|
        director_tesis_registro.try(:valida_consejero) == false || director_tesis_registro.try(:valida_consejero) == true
      end
      can :toggle_validar_consejero, DirectorTesisRegistro
      #TesisRegistro
      can :read, TemaTesisRegistro
      can :update, TemaTesisRegistro
      can :validar_consejero, TemaTesisRegistro do |tema_tesis_registro|
        tema_tesis_registro.try(:valida_consejero) == false || tema_tesis_registro.try(:valida_consejero) == true
      end
      can :toggle_validar_consejero, TemaTesisRegistro
    elsif user.alumno?
        #Alumno
        can :read, Alumno
        #AgregarAsignatura
        #can :read, AgregarAsignatura
        #can :create, AgregarAsignatura
        #can :update, AgregarAsignatura do |agregar_asignatura|
          #agregar_asignatura.try(:user) == user
        #end
        #BajaAsignatura
        #can :read, BajaAsignatura
        #can :create, BajaAsignatura
        #can :update, BajaAsignatura do |baja_asignatura|
          #baja_asignatura.try(:user) == user
        #end
        #BajaPrograma
        #can :read, BajaPrograma
        #can :create, BajaPrograma
        #can :update, BajaPrograma do |baja_programa|
          #baja_programa.try(:user) == user
        #end
        #CambiarAsignatura
        #can :read, CambiarAsignatura
        #can :create, CambiarAsignatura
        #can :update, CambiarAsignatura do |cambiar_asignatura|
          #cambiar_asignatura.try(:user) == user
        #end
        #CambiarConsejero
        #can :read, CambiarConsejero
        #can :create, CambiarConsejero
        #can :update, CambiarConsejero do |cambiar_consejero|
          #cambiar_consejero.try(:user) == user
        #end
        #CambiarTema
        #can :read, CambiarTema
        can :create, CambiarTema
        can :update, CambiarTema do |cambiar_tema|
          cambiar_tema.try(:user) == user
        end
        #CambioComisionRegistro
        #can :read, ComiteRegistro
        can :create, CambioComisionRegistro
        can :update, CambioComisionRegistro do |cambio_comision_registro|
          cambio_comision_registro.try(:user) == user
        end
        #ComisionRegistro
        #can :read, ComiteRegistro
        can :create, ComisionRegistro
        can :update, ComisionRegistro do |comision_registro|
          comision_registro.try(:user) == user
        end
        #CambioComiteRegistro
        #can :read, ComiteRegistro
        can :create, CambioComiteRegistro
        can :update, CambioComiteRegistro do |cambio_comite_registro|
          cambio_comite_registro.try(:user) == user
        end
        #ComiteRegistro
        #can :read, ComiteRegistro
        can :create, ComiteRegistro
        can :update, ComiteRegistro do |comite_registro|
          comite_registro.try(:user) == user
        end
        #CursarAsignatura
        #can :read, CursarAsignatura
        #can :create, CursarAsignatura
        #can :update, CursarAsignatura do |cursar_asignatura|
          #cursar_asignatura.try(:user) == user
        #end
        #ExamenGraduado
        #can :read, ExamenGraduado
        #can :create, ExamenGraduado
        #can :update, ExamenGraduado do |examen_graduado|
          #examen_graduado.try(:user) == user
        #end
        #RecesoSemestre
        #can :read, RecesoSemestre
        #can :create, RecesoSemestre
        #can :update, RecesoSemestre do |receso_semestre|
          #receso_semestre.try(:user) == user
        #end
        #RevocacionRegistro
        #can :read, RevocacionRegistro
        #can :create, RevocacionRegistro
        #can :update, RevocacionRegistro do |revocacion_registro|
          #revocacion_registro.try(:user) == user
        #end
        #DirectorTesisRegistro
        can :create, CambioDirectorTesisRegistro
        can :update, CambioDirectorTesisRegistro do |cambio_director_tesis_registro|
          cambio_director_tesis_registro.try(:user) == user
        end
        #DirectorTesisRegistro
        can :create, DirectorTesisRegistro
        can :update, DirectorTesisRegistro do |director_tesis_registro|
          director_tesis_registro.try(:user) == user
        end
        #TemaTesisRegistro
        can :create, TemaTesisRegistro
        can :update, TemaTesisRegistro do |tema_tesis_registro|
          tema_tesis_registro.try(:user) == user
        end
        #TesisRegistro
        #can :read, TesisRegistro
        #can :create, TesisRegistro
        #can :update, TesisRegistro do |tesis_registro|
          #tesis_registro.try(:user) == user
        #end
    end
  end
end
