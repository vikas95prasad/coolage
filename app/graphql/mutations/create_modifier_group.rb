module Mutations
  class CreateModifierGroup < BaseMutation
    argument :identifier, String, required: true
    argument :label, String, required: true
    argument :selection_required_min, Integer, required: false
    argument :selection_required_max, Integer, required: false

    type Types::ModifierGroupType

    def resolve(identifier:, label:, selection_required_min: nil, selection_required_max: nil)
      ModifierGroup.create!(
        identifier: identifier,
        label: label,
        selection_required_min: selection_required_min,
        selection_required_max: selection_required_max
      )
    end
  end
end
