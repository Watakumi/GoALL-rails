module Types
  class MutationType < Types::BaseObject

    # Goal
    field :goal_create, mutation: Mutations::GoalCreate

    # Label
    field :label_create, mutation: Mutations::LabelCreate
    field :label_update, mutation: Mutations::LabelUpdate
  end
end
