class AddCheckConstraints < ActiveRecord::Migration[7.1]
  def change
    execute <<-SQL
      ALTER TABLE items
      ADD CONSTRAINT check_price_non_negative CHECK (price >= 0);
    SQL

    execute <<-SQL
      ALTER TABLE modifier_groups
      ADD CONSTRAINT check_selection_required_min_non_negative CHECK (selection_required_min >= 0),
      ADD CONSTRAINT check_selection_required_max_non_negative CHECK (selection_required_max >= selection_required_min);
    SQL

    execute <<-SQL
      ALTER TABLE modifiers
      ADD CONSTRAINT check_display_order_non_negative CHECK (display_order >= 0),
      ADD CONSTRAINT check_default_quantity_non_negative CHECK (default_quantity >= 0),
      ADD CONSTRAINT check_price_override_non_negative CHECK (price_override >= 0);
    SQL

    execute <<-SQL
      ALTER TABLE menu_sections
      ADD CONSTRAINT check_display_order_non_negative CHECK (display_order >= 0);
    SQL

    execute <<-SQL
      ALTER TABLE section_items
      ADD CONSTRAINT check_display_order_non_negative CHECK (display_order >= 0);
    SQL
  end
end
