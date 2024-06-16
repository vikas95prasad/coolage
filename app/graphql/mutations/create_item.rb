module Mutations
  class CreateItem < BaseMutation
    argument :category, String, required: false
    argument :identifier, String, required: true
    argument :label, String, required: true
    argument :description, String, required: false
    argument :price, Float, required: false

    type Types::ItemType

    def resolve(category: nil, identifier:, label:, description: nil, price: nil)
      Item.create!(
        category: category,
        identifier: identifier,
        label: label,
        description: description,
        price: price
      )
    end
  end
end
