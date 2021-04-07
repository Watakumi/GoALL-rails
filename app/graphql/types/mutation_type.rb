module Types
  class MutationType < Types::BaseObject
    field :goal_create, mutation: Mutations::GoalCreate
    field :label_create, mutation: Mutations::LabelCreate
  end
end
