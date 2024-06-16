module Types
  class ItemModifierGroupType < Types::BaseObject
    field :id, ID, null: false
    field :item_id, ID, null: false
    field :modifier_group_id, ID, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :item, Types::ItemType, null: false
    field :modifier_group, Types::ModifierGroupType, null: false
  end
end
