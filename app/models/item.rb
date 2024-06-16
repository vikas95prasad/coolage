# app/models/item.rb
class Item < ApplicationRecord
  has_many :section_items, dependent: :destroy
  has_many :sections, through: :section_items
  has_many :item_modifier_groups, dependent: :destroy
  has_many :modifier_groups, through: :item_modifier_groups
  has_many :modifiers, through: :item_modifier_groups

  validates :category, presence: true
  validates :identifier, presence: true, uniqueness: true
  validates :label, presence: true
end
