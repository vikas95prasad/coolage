module Types
  class ModifierGroupType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :min_required, Integer, null: false
    field :max_required, Integer, null: false
    field :item, Types::ItemType, null: false
    field :modifiers, [Types::ModifierType], null: false
  end
end
