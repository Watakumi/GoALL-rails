module Mutations
  class GoalCreate < BaseMutation
    graphql_name 'GoalCreate'

    field :goal, Types::GoalType, null: true
    field :result, Boolean, null: true

    argument :title, String, required: true
    argument :description, String, required: false

    def resolve(**args)
      goal = Goal.create(title: args[:title], description: args[:description])
      {
        goal: goal,
        result: goal.errors.blank?
      }
    end
  end
end
