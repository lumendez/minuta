class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
    elsif user.coordinador?
      can :read, BajaAsignatura
      can :update, BajaAsignatura do |baja_asignatura|
        baja_asignatura.try(:user) == user
      end
    elsif user.consejero?
      can :read, BajaAsignatura
      can :update, BajaAsignatura #do |baja_asignatura|
        #baja_asignatura.try(:user) == user
    #end
    elsif user.alumno?
        can :read, BajaAsignatura
        can :create, BajaAsignatura
        can :update, BajaAsignatura do |baja_asignatura|
          baja_asignatura.try(:user) == user
        end
    end
  end
end
