module Mutations
  class CreateMenu < BaseMutation
    argument :identifier, String, required: true
    argument :label, String, required: true
    argument :state, String, required: true
    argument :start_date, GraphQL::Types::ISO8601Date, required: false
    argument :end_date, GraphQL::Types::ISO8601Date, required: false

    type Types::MenuType

    def resolve(identifier:, label:, state:, start_date: nil, end_date: nil)
      Menu.create!(
        identifier: identifier,
        label: label,
        state: state,
        start_date: start_date,
        end_date: end_date
      )
    end
  end
end
