module Mutations
  class DeleteItem < BaseMutation
    argument :id, ID, required: true

    type Types::ItemType

    def resolve(id:)
      item = Item.find(id)
      item.destroy
      item
    end
  end
end
