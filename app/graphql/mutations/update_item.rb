module Mutations
  class UpdateItem < BaseMutation
    argument :id, ID, required: true
    argument :category, String, required: false
    argument :identifier, String, required: false
    argument :label, String, required: false
    argument :description, String, required: false
    argument :price, Float, required: false

    type Types::ItemType

    def resolve(id:, category: nil, identifier: nil, label: nil, description: nil, price: nil)
      item = Item.find(id)
      item.update!(
        category: category,
        identifier: identifier,
        label: label,
        description: description,
        price: price
      )
      item
    end
  end
end
