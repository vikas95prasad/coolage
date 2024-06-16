module Types
  class SectionItemType < Types::BaseObject
    field :id, ID, null: false
    field :item_id, ID, null: false
    field :section_id, ID, null: false
    field :display_order, Int, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :item, Types::ItemType, null: false
    field :section, Types::SectionType, null: false
  end
end
