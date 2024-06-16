module Types
  class ModifierType < Types::BaseObject
    field :id, ID, null: false
    field :default_quantity, Int, null: false
    field :price_override, Float, null: true
    field :item, Types::ItemType, null: false

    def item
      object.item
    end
  end
end
