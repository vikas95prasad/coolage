module Mutations
  class UpdateMenu < BaseMutation
    argument :id, ID, required: true
    argument :identifier, String, required: false
    argument :label, String, required: false
    argument :state, String, required: false
    argument :start_date, GraphQL::Types::ISO8601Date, required: false
    argument :end_date, GraphQL::Types::ISO8601Date, required: false

    type Types::MenuType

    def resolve(id:, identifier: nil, label: nil, state: nil, start_date: nil, end_date: nil)
      menu = Menu.find(id)
      menu.update!(
        identifier: identifier,
        label: label,
        state: state,
        start_date: start_date,
        end_date: end_date
      )
      menu
    end
  end
end
