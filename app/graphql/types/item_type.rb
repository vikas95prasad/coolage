module Types
  class ItemType < Types::BaseObject
    field :id, ID, null: false
    field :category, String, null: true
    field :identifier, String, null: true
    field :label, String, null: true
    field :description, String, null: true
    field :price, Float, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :modifier_groups, [Types::ModifierGroupType], null: true
    field :sections, [Types::SectionType], null: true
  end
end
