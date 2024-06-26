module Types
  class ModifierType < Types::BaseObject
    field :id, ID, null: false
    field :item_id, ID, null: false
    field :modifier_group_id, ID, null: false
    field :display_order, Int, null: true
    field :default_quantity, Int, null: true
    field :price_override, Float, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :item, Types::ItemType, null: false
    field :modifier_group, Types::ModifierGroupType, null: false
  end
end
