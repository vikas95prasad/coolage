# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear existing data
Modifier.destroy_all
ModifierGroup.destroy_all
Item.destroy_all
Section.destroy_all
Menu.destroy_all

# Create non-configurable items
pepperoni_pizza = Item.create(name: 'Pepperoni Pizza', item_type: 'Product')
margherita_pizza = Item.create(name: 'Margherita Pizza', item_type: 'Product')

# Create a section with non-configurable items
non_configurable_section = Section.create(name: 'Non-Configurable Items')
non_configurable_section.items << pepperoni_pizza
non_configurable_section.items << margherita_pizza

# Create items that can be used as modifiers
small_pizza = Item.create(name: 'Small Pizza', item_type: 'Component')
medium_pizza = Item.create(name: 'Medium Pizza', item_type: 'Component')
large_pizza = Item.create(name: 'Large Pizza', item_type: 'Component')

# Create a modifier group for pizza sizes
size_modifier_group = ModifierGroup.create(name: 'Size', min_required: 1, max_required: 1)
size_modifier_group.modifiers.create(item: small_pizza, default_quantity: 0)
size_modifier_group.modifiers.create(item: medium_pizza, default_quantity: 0)
size_modifier_group.modifiers.create(item: large_pizza, default_quantity: 0)

# Create a pizza item with the size modifier group
configurable_pizza = Item.create(name: 'Configurable Pizza', item_type: 'Product')
configurable_pizza.modifier_groups << size_modifier_group

# Create a section with configurable items
configurable_section = Section.create(name: 'Configurable Items')
configurable_section.items << configurable_pizza

# Create a menu and add the sections to it
pizza_menu = Menu.create(name: 'Pizza Menu')
pizza_menu.sections << non_configurable_section
pizza_menu.sections << configurable_section
