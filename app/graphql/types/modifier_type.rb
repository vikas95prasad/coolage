module Types
  class ModifierType < Types::BaseObject
    field :id, ID, null: false
    field :default_quantity, Integer, null: false
    field :item, Types::ItemType, null: false
    field :modifier_group, Types::ModifierGroupType, null: false
  end
end
