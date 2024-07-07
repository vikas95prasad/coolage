module Types
  class SectionType < Types::BaseObject
    field :id, ID, null: false
    field :identifier, String, null: true
    field :label, String, null: true
    field :description, String, null: true
    field :availability, Boolean, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :menus, [Types::MenuType], null: true
    field :items, [Types::ItemType], null: true

    def items
      Item.joins(:sections)
          .where(section_items: { section_id: object.id })
          .order('section_items.display_order ASC')
    end
  end
end
