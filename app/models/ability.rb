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
    end
  end
end
