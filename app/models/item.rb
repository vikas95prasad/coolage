class Item < ApplicationRecord
  self.inheritance_column = :nil

  has_many :item_modifier_groups
  has_many :modifier_groups, through: :item_modifier_groups
  has_many :modifiers
  has_many :section_items
  has_many :sections, through: :section_items

  validates :type, presence: true
  validates :identifier, presence: true, uniqueness: true
  validates :label, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :type, presence: true, inclusion: { in: %w[Product Component] }
end
