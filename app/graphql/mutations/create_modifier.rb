module Mutations
  class CreateModifier < BaseMutation
    argument :item_id, ID, required: true
    argument :modifier_group_id, ID, required: true
    argument :display_order, Integer, required: false
    argument :default_quantity, Integer, required: false
    argument :price_override, Float, required: false

    type Types::ModifierType

    def resolve(item_id:, modifier_group_id:, display_order: nil, default_quantity: nil, price_override: nil)
      Modifier.create!(
        item_id: item_id,
        modifier_group_id: modifier_group_id,
        display_order: display_order,
        default_quantity: default_quantity,
        price_override: price_override
      )
    end
  end
end
