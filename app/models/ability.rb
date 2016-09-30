class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
      can :cambiar_estado, BajaAsignatura
      can :cambiar_estado, BajaPrograma
    elsif user.coordinador?
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
      #ComiteRegistro
      can :read, ComiteRegistro
      can :update, ComiteRegistro
      can :validar_coordinador, ComiteRegistro do |comite_registro|
        comite_registro.try(:valida_coordinador) == false || comite_registro.try(:valida_coordinador) == true
      end
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
      #TesisRegistro
      can :read, TesisRegistro
      can :update, TesisRegistro
      can :validar_coordinador, TesisRegistro do |tesis_registro|
        tesis_registro.try(:valida_coordinador) == false || tesis_registro.try(:valida_coordinador) == true
      end
    elsif user.consejero?
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
      #ComiteRegistro
      can :read, ComiteRegistro
      can :update, ComiteRegistro
      can :validar_consejero, ComiteRegistro do |comite_registro|
        comite_registro.try(:valida_consejero) == false || comite_registro.try(:valida_consejero) == true
      end
      #CursarAsignatura
      can :read, CursarAsignatura
      can :update, CursarAsignatura
      can :validar_consejero, CursarAsignatura do |cursar_asignatura|
        cursar_asignatura.try(:valida_consejero) == false || cursar_asignatura.try(:valida_consejero) == true
      end
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
      #TesisRegistro
      can :read, TesisRegistro
      can :update, TesisRegistro
      can :validar_consejero, TesisRegistro do |tesis_registro|
        tesis_registro.try(:valida_consejero) == false || tesis_registro.try(:valida_consejero) == true
      end
    elsif user.alumno?
        can :read, BajaAsignatura
        can :create, BajaAsignatura
        can :update, BajaAsignatura do |baja_asignatura|
          baja_asignatura.try(:user) == user
        end
        #BajaPrograma
        can :read, BajaPrograma
        can :create, BajaPrograma
        can :update, BajaPrograma do |baja_programa|
          baja_programa.try(:user) == user
        end
        #CambiarAsignatura
        can :read, CambiarAsignatura
        can :create, CambiarAsignatura
        can :update, CambiarAsignatura do |cambiar_asignatura|
          cambiar_asignatura.try(:user) == user
        end
        #CambiarConsejero
        can :read, CambiarConsejero
        can :create, CambiarConsejero
        can :update, CambiarConsejero do |cambiar_consejero|
          cambiar_consejero.try(:user) == user
        end
        #CambiarTema
        can :read, CambiarTema
        can :create, CambiarTema
        can :update, CambiarTema do |cambiar_tema|
          cambiar_tema.try(:user) == user
        end
        #ComiteRegistro
        can :read, ComiteRegistro
        can :create, ComiteRegistro
        can :update, ComiteRegistro do |comite_registro|
          comite_registro.try(:user) == user
        end
        #CursarAsignatura
        can :read, CursarAsignatura
        can :create, CursarAsignatura
        can :update, CursarAsignatura do |cursar_asignatura|
          cursar_asignatura.try(:user) == user
        end
        #ExamenGraduado
        can :read, ExamenGraduado
        can :create, ExamenGraduado
        can :update, ExamenGraduado do |examen_graduado|
          examen_graduado.try(:user) == user
        end
        #RecesoSemestre
        can :read, RecesoSemestre
        can :create, RecesoSemestre
        can :update, RecesoSemestre do |receso_semestre|
          receso_semestre.try(:user) == user
        end
        #TesisRegistro
        can :read, TesisRegistro
        can :create, TesisRegistro
        can :update, TesisRegistro do |tesis_registro|
          tesis_registro.try(:user) == user
        end
    end
  end
end
