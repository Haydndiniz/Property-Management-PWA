# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    #   user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    elsif user.manager?
      can :update, Property
      can :manage, Unit
      can :manage, Resource
      can :manage, Tenant
    elsif user.staff?
      can :update, Resource
      # can :update, Maintainence
      can :manage, Tenant
    else
      can :read, Tenant
      can  :read, Unit
      can :update, User
      # can [:create, :update], Maintanence

    end
  end
end
