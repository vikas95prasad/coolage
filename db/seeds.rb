# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(label: genre_name)
#   end

# Clear existing data
ItemModifierGroup.destroy_all
Modifier.destroy_all
ModifierGroup.destroy_all
SectionItem.destroy_all
MenuSection.destroy_all
Item.destroy_all
Section.destroy_all
Menu.destroy_all

# Create Menu
pizza_menu = Menu.create!(
  identifier: 'pizza_menu',
  label: 'Pizza Menu',
  state: 'active',
  start_date: Date.today,
  end_date: Date.today + 1.year
)

# Create Sections
non_configurable_section = Section.create!(
  identifier: 'non_configurable',
  label: 'Non-Configurable Items',
  description: 'Items that do not have any configurable options'
)

configurable_section = Section.create!(
  identifier: 'configurable',
  label: 'Configurable Items',
  description: 'Items that can be customized with different options'
)

# Create non-configurable items
pepperoni_pizza = Item.create!(
  category: 'Product',
  identifier: 'pepperoni_pizza',
  label: 'Pepperoni Pizza',
  description: 'A delicious pepperoni pizza',
  price: 12.99
)

margherita_pizza = Item.create!(
  category: 'Product',
  identifier: 'margherita_pizza',
  label: 'Margherita Pizza',
  description: 'A classic margherita pizza',
  price: 10.99
)

# Create SectionItems for non-configurable section
SectionItem.create!(section: non_configurable_section, item: pepperoni_pizza)
SectionItem.create!(section: non_configurable_section, item: margherita_pizza)

# Create items that can be used as modifiers
small_pizza = Item.create!(
  category: 'Component',
  identifier: 'small_pizza',
  label: 'Small Pizza',
  description: '10 inch pizza',
  price: 0
)

medium_pizza = Item.create!(
  category: 'Component',
  identifier: 'medium_pizza',
  label: 'Medium Pizza',
  description: '12 inch pizza',
  price: 2.00
)

large_pizza = Item.create!(
  category: 'Component',
  identifier: 'large_pizza',
  label: 'Large Pizza',
  description: '14 inch pizza',
  price: 4.00
)

# Create a modifier group for pizza sizes
size_modifier_group = ModifierGroup.create!(
  identifier: 'size',
  label: 'Size',
  selection_required_min: 1,
  selection_required_max: 1
)

Modifier.create!(
  item: small_pizza,
  modifier_group: size_modifier_group,
  display_order: 0,
  default_quantity: 0,
  price_override: 0.0
)

Modifier.create!(
  item: medium_pizza,
  modifier_group: size_modifier_group,
  display_order: 1,
  default_quantity: 1,
  price_override: 2.0
)

Modifier.create!(
  item: large_pizza,
  modifier_group: size_modifier_group,
  display_order: 2,
  default_quantity: 0,
  price_override: 4.0
)

# Create a pizza item with the size modifier group
configurable_pizza = Item.create!(
  category: 'Product',
  identifier: 'configurable_pizza',
  label: 'Configurable Pizza',
  description: 'A pizza that can be customized',
  price: 10.00
)

ItemModifierGroup.create!(item: configurable_pizza, modifier_group: size_modifier_group)

# Create SectionItem for configurable section
SectionItem.create!(section: configurable_section, item: configurable_pizza)

# Create MenuSections linking menus with sections
MenuSection.create!(menu: pizza_menu, section: non_configurable_section, display_order: 0)
MenuSection.create!(menu: pizza_menu, section: configurable_section, display_order: 1)
