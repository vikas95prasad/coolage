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

# # Create Menu
# pizza_menu = Menu.create!(
#   identifier: 'pizza_menu',
#   label: 'Pizza Menu',
#   state: 'active',
#   start_date: Date.today,
#   end_date: Date.today + 1.year
# )

# # Create Sections
# non_configurable_pizza_section = Section.create!(
#   identifier: 'non_configurable_pizza',
#   label: 'Non-Configurable Pizza items',
#   description: 'Items that do not have any configurable options'
# )

# configurable_pizza_section = Section.create!(
#   identifier: 'configurable_pizza',
#   label: 'Configurable Pizza items',
#   description: 'Items that can be customized with different options'
# )

# # Create non-configurable items
# pepperoni_pizza = Item.create!(
#   type: 'Product',
#   identifier: 'pepperoni_pizza',
#   label: 'Pepperoni Pizza',
#   description: 'A delicious pepperoni pizza',
#   price: 12.99
# )

# margherita_pizza = Item.create!(
#   type: 'Product',
#   identifier: 'margherita_pizza',
#   label: 'Margherita Pizza',
#   description: 'A classic margherita pizza',
#   price: 10.99
# )

# # Create SectionItems for non-configurable section
# SectionItem.create!(section: non_configurable_pizza_section, item: pepperoni_pizza)
# SectionItem.create!(section: non_configurable_pizza_section, item: margherita_pizza)

# # Create items that can be used as modifiers
# small_pizza = Item.create!(
#   type: 'Component',
#   identifier: 'small_pizza',
#   label: 'Small Pizza',
#   description: '10 inch pizza',
#   price: 0
# )

# medium_pizza = Item.create!(
#   type: 'Component',
#   identifier: 'medium_pizza',
#   label: 'Medium Pizza',
#   description: '12 inch pizza',
#   price: 2.00
# )

# large_pizza = Item.create!(
#   type: 'Component',
#   identifier: 'large_pizza',
#   label: 'Large Pizza',
#   description: '14 inch pizza',
#   price: 4.00
# )

# # Create a modifier group for pizza sizes
# size_modifier_group = ModifierGroup.create!(
#   identifier: 'size',
#   label: 'Size',
#   selection_required_min: 1,
#   selection_required_max: 1
# )

# Modifier.create!(
#   item: small_pizza,
#   modifier_group: size_modifier_group,
#   display_order: 0,
#   default_quantity: 0,
#   price_override: 0.0
# )

# Modifier.create!(
#   item: medium_pizza,
#   modifier_group: size_modifier_group,
#   display_order: 1,
#   default_quantity: 1,
#   price_override: 2.0
# )

# Modifier.create!(
#   item: large_pizza,
#   modifier_group: size_modifier_group,
#   display_order: 2,
#   default_quantity: 0,
#   price_override: 4.0
# )

# # Create a pizza item with the size modifier group
# configurable_pizza = Item.create!(
#   type: 'Product',
#   identifier: 'configurable_pizza',
#   label: 'Configurable Pizza',
#   description: 'A pizza that can be customized',
#   price: 10.00
# )

# ItemModifierGroup.create!(item: configurable_pizza, modifier_group: size_modifier_group)

# # Create SectionItem for configurable section
# SectionItem.create!(section: configurable_pizza_section, item: configurable_pizza)

# # Create MenuSections linking menus with sections
# MenuSection.create!(menu: pizza_menu, section: non_configurable_pizza_section, display_order: 0)
# MenuSection.create!(menu: pizza_menu, section: configurable_pizza_section, display_order: 1)

platters = Menu.create!(
  identifier: 'platters',
  label: 'Platters',
  state: 'active',
  start_date: Date.today,
  end_date: Date.today + 1.year
)
mrs_kuehs_favourites = Item.create!(
  type: 'Product',
  identifier: 'mrs_kuehs_favourites',
  label: "Mrs Kueh's Favourites",
  description: 'Includes: 3 pieces of Kueh Salat, 3 pieces of Bingka Ubi, 3 pieces of Ondeh Ondeh, 3 pieces of Putri Ayu Kueh Kosui',
  price: 35.00,
  availability: true
)
love_basket = Item.create!(
  type: 'Product',
  identifier: 'love_basket',
  label: 'Love Basket',
  description: "Just like mama's love for us, the Love Basket is overflowing with goodness and delicious things.",
  price: 78.00,
  availability: true
)
platters_section = Section.create!(identifier: 'platters_section', label: 'Platters section',
                                   description: 'Platters section')
SectionItem.create!(section: platters_section, item: mrs_kuehs_favourites, display_order: 1)
SectionItem.create!(section: platters_section, item: love_basket, display_order: 0)
MenuSection.create!(menu: platters, section: platters_section, display_order: 2)

kuehs_and_cakes = Menu.create!(
  identifier: 'kuehs_and_cakes',
  label: 'Kuehs & Cakes',
  state: 'active',
  start_date: Date.today,
  end_date: Date.today + 1.year
)
gula_melaka_kueh = Item.create!(
  type: 'Product',
  identifier: 'gula_melaka_kueh',
  label: 'Gula Melaka Kueh Salat with Mao Shan Wang Durian',
  description: 'Specially sourced gula melaka provides the salty and toasted taste.',
  price: 42.00,
  availability: true
)
brandy_almond_sugee_cake = Item.create!(
  type: 'Product',
  identifier: 'brandy_almond_sugee_cake',
  label: 'Brandy Almond Sugee Cake',
  description: 'A deceptively simple cake, the OG sugee cake is notoriously difficult to master.',
  price: 78.00,
  availability: true
)
signature_fruit_cake = Item.create!(
  type: 'Product',
  identifier: 'signature_fruit_cake',
  label: 'Signature Fruit Cake',
  description: 'A signature of our founder who has been baking this treat for friends and family for over 30 years.',
  price: 48.00,
  availability: false
)
kuehs_and_cakes_section = Section.create!(identifier: 'kuehs_and_cakes_section', label: 'Kuehs and cakes section',
                                          description: 'Kuehs and cakes')
SectionItem.create!(section: kuehs_and_cakes_section, item: gula_melaka_kueh, display_order: 0)
SectionItem.create!(section: kuehs_and_cakes_section, item: brandy_almond_sugee_cake, display_order: 1)
SectionItem.create!(section: kuehs_and_cakes_section, item: signature_fruit_cake, display_order: 2)
MenuSection.create!(menu: kuehs_and_cakes, section: kuehs_and_cakes_section, display_order: 1)

mrs_kueh_treats = Menu.create!(
  identifier: 'mrs_Kueh_treats',
  label: 'Mrs Kueh Treats',
  state: 'active',
  start_date: Date.today,
  end_date: Date.today + 1.year
)
gula_melaka_coconut_granola = Item.create!(
  type: 'Product',
  identifier: 'gula-melaka-coconut-granola',
  label: 'Gula Melaka & Coconut Granola',
  description: 'Perfect for nutty days when everything feels crazy, when your emotions feel scattered. This home-made cereal will nourish you and give you strength. Made with a mother’s love, natural sugars and cold pressed coconut oil, this magic mix of nuts, seeds, nuts and grains will see you through any day.',
  price: 18.00,
  availability: true
)
orange_grapefruit_lime_marmalde = Item.create!(
  type: 'Product',
  identifier: 'orange-grapefruit-lime-marmalde',
  label: 'Orange Grapefruit Lime Marmalde',
  description: 'Perfect for happy days when the sun is shining on your back. When the house is filled with laughter, and no one is asking you where is their pants. You have a moment to savour the golden spread on your warm sourdough, the burst of citrus blooms suddenly and you wish the moment could last forever. Your heart is filled with gratitude that you are alive.
Eat with your favourite toast and crackers, or make warm tea or a fizzy drink with soda water.',
  price: 12.00,
  availability: true
)
kueh_pandan_coconut_kaya = Item.create!(
  type: 'Product',
  identifier: 'mrs-kueh-pandan-coconut-kaya',
  label: 'MRS KUEH Pandan Coconut Kaya',
  description: 'Kayas are best when they are fresh, cooked slowly with exceeding care not to bring the eggs past a specific temperature. Our kayas are made with the same traditional ingredients, but our painstaking method brings a fresh new experience.',
  price: 8.00,
  availability: false
)
mrs_kueh_treats_section = Section.create!(identifier: 'mrs_kueh_treats_section', label: 'Mrs Kueh Treats',
                                          description: 'Mrs Kueh Treats', availability: false)
SectionItem.create!(section: mrs_kueh_treats_section, item: gula_melaka_coconut_granola, display_order: 0)
SectionItem.create!(section: mrs_kueh_treats_section, item: orange_grapefruit_lime_marmalde, display_order: 1)
SectionItem.create!(section: mrs_kueh_treats_section, item: kueh_pandan_coconut_kaya, display_order: 2)

MenuSection.create!(menu: mrs_kueh_treats, section: mrs_kueh_treats_section, display_order: 0)
