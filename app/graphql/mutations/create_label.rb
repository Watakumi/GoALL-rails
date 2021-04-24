module Mutations
  class CreateLabel < BaseMutation
    graphql_name 'CreateLabel'

    field :label, Types::LabelType, null: true
    field :result, Boolean, null: true

    argument :name, String, required: true

    def resolve(**args)
      label = Label.create(name: args[:name])
      {
        label: label,
        result: label.errors.blank?
      }
    end
  end
end
