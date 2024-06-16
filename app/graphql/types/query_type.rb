# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :node, Types::NodeType, null: true, description: "Fetches an object given its ID." do
      argument :id, ID, required: true, description: "ID of the object."
    end

    def node(id:)
      context.schema.object_from_id(id, context)
    end

    field :nodes, [Types::NodeType, null: true], null: true, description: "Fetches a list of objects given a list of IDs." do
      argument :ids, [ID], required: true, description: "IDs of the objects."
    end

    def nodes(ids:)
      ids.map { |id| context.schema.object_from_id(id, context) }
    end

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :items, [Types::ItemType], null: false
    def items
      Item.all
    end

    field :item, Types::ItemType, null: false do
      argument :id, ID, required: true
    end
    def item(id:)
      Item.find(id)
    end

    field :modifier_groups, [Types::ModifierGroupType], null: false
    def modifier_groups
      ModifierGroup.all
    end

    field :modifier_group, Types::ModifierGroupType, null: false do
      argument :id, ID, required: true
    end
    def modifier_group(id:)
      ModifierGroup.find(id)
    end

    field :modifiers, [Types::ModifierType], null: false
    def modifiers
      Modifier.all
    end

    field :modifier, Types::ModifierType, null: false do
      argument :id, ID, required: true
    end
    def modifier(id:)
      Modifier.find(id)
    end

    field :menus, [Types::MenuType], null: false
    def menus
      Menu.all
    end

    field :menu, Types::MenuType, null: false do
      argument :id, ID, required: true
    end
    def menu(id:)
      Menu.find(id)
    end

    field :menu_sections, [Types::MenuSectionType], null: false
    def menu_sections
      MenuSection.all
    end

    field :menu_section, Types::MenuSectionType, null: false do
      argument :id, ID, required: true
    end
    def menu_section(id:)
      MenuSection.find(id)
    end

    field :sections, [Types::SectionType], null: false
    def sections
      Section.all
    end

    field :section, Types::SectionType, null: false do
      argument :id, ID, required: true
    end
    def section(id:)
      Section.find(id)
    end

    field :section_items, [Types::SectionItemType], null: false
    def section_items
      SectionItem.all
    end

    field :section_item, Types::SectionItemType, null: false do
      argument :id, ID, required: true
    end
    def section_item(id:)
      SectionItem.find(id)
    end

    field :item_modifier_groups, [Types::ItemModifierGroupType], null: false
    def item_modifier_groups
      ItemModifierGroup.all
    end

    field :item_modifier_group, Types::ItemModifierGroupType, null: false do
      argument :id, ID, required: true
    end
    def item_modifier_group(id:)
      ItemModifierGroup.find(id)
    end
  end
end
