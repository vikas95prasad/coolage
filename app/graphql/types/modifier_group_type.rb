module Types
  class ModifierGroupType < Types::BaseObject
    field :id, ID, null: false
    field :identifier, String, null: true
    field :label, String, null: true
    field :selection_required_min, Int, null: true
    field :selection_required_max, Int, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :items, [Types::ItemType], null: true
    field :modifiers, [Types::ModifierType], null: true
  end
end
