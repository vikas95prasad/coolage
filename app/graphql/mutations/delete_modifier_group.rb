module Mutations
  class DeleteModifierGroup < BaseMutation
    argument :id, ID, required: true

    type Types::ModifierGroupType

    def resolve(id:)
      modifier_group = ModifierGroup.find(id)
      modifier_group.destroy
      modifier_group
    end
  end
end
