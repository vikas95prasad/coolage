module Mutations
  class DeleteSection < BaseMutation
    argument :id, ID, required: true

    type Types::SectionType

    def resolve(id:)
      section = Section.find(id)
      section.destroy
      section
    end
  end
end
