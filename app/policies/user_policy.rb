class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def create?
    true
    end

    def edit?
      record.user == user
    end
end
