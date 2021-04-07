module Types
  class MutationType < Types::BaseObject
    field :goal_create, mutation: Mutations::GoalCreate
  end
end
