module Types
  class MutationType < Types::BaseObject
    field :goal_create, mutation: Mutations::CreateGoal
    field :label_create, mutation: Mutations::CreateLabel
  end
end
