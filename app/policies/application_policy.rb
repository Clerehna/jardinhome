# frozen_string_literal: true

class ApplicationPolicy
  attr_reader :user, :prestation

  def initialize(user, prestation)
    @user = user
    @prestation = prestation
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
    # user.admin? || !post.published?
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      # raise NotImplementedError, "You must define #resolve in #{self.class}"
    end

    private

    attr_reader :user, :scope
  end
end
