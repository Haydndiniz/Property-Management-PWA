# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :access, :rails_admin
      can :manage, :all
      can :read, :dashboard
    elsif user.manager?
      can :update, Property
      can :manage, Unit
      can :manage, Resource
      can :manage, Tenant
    elsif user.staff?
      can :update, Resource
      # can :update, Maintainence
      can :manage, Tenant
    # elsif user.tenant?
    #   can :read, Tenant
    #   can :read, Unit
    #   can :update, User
      # can [:create, :update], Maintanence
    else
      can :read, Property
    end
  end
end
