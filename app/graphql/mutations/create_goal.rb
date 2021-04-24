module Mutations
  class CreateGoal < BaseMutation
    graphql_name 'CreateGoal'

    field :goal, Types::GoalType, null: true
    field :result, Boolean, null: true

    argument :label_id, ID, required: false
    argument :title, String, required: true
    argument :description, String, required: false

    def resolve(**args)
      if(args[:label_id])
        label = Label.find(args[:label_id])
        goal = label.goals.create(title: args[:title], description: args[:description])
      else
        goal = Goal.create(title: args[:title], description: args[:description])
      end
      {
        goal: goal,
        result: goal.errors.blank?
      }
    end
  end
end
