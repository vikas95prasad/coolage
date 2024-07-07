module Types
  class MenuType < Types::BaseObject
    field :id, ID, null: false
    field :identifier, String, null: true
    field :label, String, null: true
    field :state, String, null: true
    field :start_date, GraphQL::Types::ISO8601Date, null: true
    field :end_date, GraphQL::Types::ISO8601Date, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :sections, [Types::SectionType], null: true

    def sections
      Section.joins(:menu_sections)
             .where(menu_sections: { menu_id: object.id })
             .order('menu_sections.display_order ASC')
    end
  end
end
