class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, :all if user.role == 'admin'

    can :destroy, Post, author_id: user
    can :destroy, Comment, author_id: user
  end
end