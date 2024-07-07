module Types
  class MenuSectionType < Types::BaseObject
    field :id, ID, null: false
    field :menu_id, ID, null: false
    field :section_id, ID, null: false
    field :display_order, Int, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :menu, Types::MenuType, null: false
    field :section, Types::SectionType, null: false
    field :availability, Boolean, null: true
  end
end
