module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :goals, [Types::GoalType], null: false
    def goals
      Goal.all
    end

    field :goal, Types::GoalType, null: false do
      argument :id, Int, required: true
    end
    def goal(id:)
      Goal.find(id)
    end

    field :labels, [Types::LabelType], null: false
    def labels
      Label.all
    end

    field :label, Types::LabelType, null: false do
      argument :id, Int, required: true
    end
    def label(id:)
      Label.find(id)
    end
  end
end
