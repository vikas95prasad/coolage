module Mutations
  class UpdateModifierGroup < BaseMutation
    argument :id, ID, required: true
    argument :identifier, String, required: false
    argument :label, String, required: false
    argument :selection_required_min, Integer, required: false
    argument :selection_required_max, Integer, required: false

    type Types::ModifierGroupType

    def resolve(id:, identifier: nil, label: nil, selection_required_min: nil, selection_required_max: nil)
      modifier_group = ModifierGroup.find(id)
      modifier_group.update!(
        identifier: identifier,
        label: label,
        selection_required_min: selection_required_min,
        selection_required_max: selection_required_max
      )
      modifier_group
    end
  end
end
