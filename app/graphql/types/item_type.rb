module Types
  class ItemType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :item_type, String, null: false
    field :section, Types::SectionType, null: false
    field :modifier_groups, [Types::ModifierGroupType], null: false
  end
end
