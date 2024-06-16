module Mutations
  class DeleteModifier < BaseMutation
    argument :id, ID, required: true

    type Types::ModifierType

    def resolve(id:)
      modifier = Modifier.find(id)
      modifier.destroy
      modifier
    end
  end
end
