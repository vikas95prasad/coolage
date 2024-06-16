module Mutations
  class CreateSection < BaseMutation
    argument :identifier, String, required: true
    argument :label, String, required: true
    argument :description, String, required: false

    type Types::SectionType

    def resolve(identifier:, label:, description: nil)
      Section.create!(
        identifier: identifier,
        label: label,
        description: description
      )
    end
  end
end
