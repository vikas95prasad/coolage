module Types
  class MenuType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :sections, [Types::SectionType], null: false
  end
end
