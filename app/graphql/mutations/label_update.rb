module Mutations
  class LabelUpdate < BaseMutation
    graphql_name 'LabelUpdate'

    field :label, Types::LabelType, null: true
    field :result, Boolean, null: true

    argument :id, ID, required: true
    argument :name, String, required: true

    def resolve(**args)
      label = Label.find(args[:id])
      label.update(name: args[:name])
      {
        label: label,
        result: label.errors.blank?
      }
    end
  end
end
