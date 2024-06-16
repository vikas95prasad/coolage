class AddNotNullConstraints < ActiveRecord::Migration[7.1]
  def change
    change_column_null :items, :identifier, false
    change_column_null :items, :label, false
    change_column_null :items, :description, false
    change_column_null :items, :price, false
    change_column_null :items, :type, false

    change_column_null :modifier_groups, :identifier, false
    change_column_null :modifier_groups, :label, false
    change_column_null :modifier_groups, :selection_required_min, false
    change_column_null :modifier_groups, :selection_required_max, false

    change_column_null :modifiers, :item_id, false
    change_column_null :modifiers, :modifier_group_id, false
    change_column_null :modifiers, :display_order, false
    change_column_null :modifiers, :default_quantity, false

    change_column_null :sections, :identifier, false
    change_column_null :sections, :label, false
    change_column_null :sections, :description, false

    change_column_null :menus, :identifier, false
    change_column_null :menus, :label, false
    change_column_null :menus, :state, false
    change_column_null :menus, :start_date, false
    change_column_null :menus, :end_date, false

    change_column_null :item_modifier_groups, :item_id, false
    change_column_null :item_modifier_groups, :modifier_group_id, false

    change_column_null :menu_sections, :menu_id, false
    change_column_null :menu_sections, :section_id, false
    change_column_null :menu_sections, :display_order, false

    change_column_null :section_items, :item_id, false
    change_column_null :section_items, :section_id, false
    change_column_null :section_items, :display_order, false
  end
end
