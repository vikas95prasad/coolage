module Mutations
  class UpdateModifier < BaseMutation
    argument :id, ID, required: true
    argument :item_id, ID, required: false
    argument :modifier_group_id, ID, required: false
    argument :display_order, Integer, required: false
    argument :default_quantity, Integer, required: false
    argument :price_override, Float, required: false

    type Types::ModifierType

    def resolve(id:, item_id: nil, modifier_group_id: nil, display_order: nil, default_quantity: nil, price_override: nil)
      modifier = Modifier.find(id)
      modifier.update!(
        item_id: item_id,
        modifier_group_id: modifier_group_id,
        display_order: display_order,
        default_quantity: default_quantity,
        price_override: price_override
      )
      modifier
    end
  end
end
