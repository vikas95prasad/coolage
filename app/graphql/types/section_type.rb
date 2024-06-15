module Types
  class SectionType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :menu, Types::MenuType, null: false
    field :items, [Types::ItemType], null: false
  end
end
