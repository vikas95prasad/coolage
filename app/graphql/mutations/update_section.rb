module Mutations
  class UpdateSection < BaseMutation
    argument :id, ID, required: true
    argument :identifier, String, required: false
    argument :label, String, required: false
    argument :description, String, required: false

    type Types::SectionType

    def resolve(id:, identifier: nil, label: nil, description: nil)
      section = Section.find(id)
      section.update!(
        identifier: identifier,
        label: label,
        description: description
      )
      section
    end
  end
end
