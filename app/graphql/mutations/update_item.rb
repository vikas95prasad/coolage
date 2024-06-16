module Mutations
  class UpdateItem < BaseMutation
    argument :id, ID, required: true
    argument :type, String, required: false
    argument :identifier, String, required: false
    argument :label, String, required: false
    argument :description, String, required: false
    argument :price, Float, required: false

    type Types::ItemType

    def resolve(id:, type: nil, identifier: nil, label: nil, description: nil, price: nil)
      item = Item.find(id)
      item.update!(
        type: type,
        identifier: identifier,
        label: label,
        description: description,
        price: price
      )
      item
    end
  end
end
