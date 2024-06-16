# app/models/modifier_group.rb
class ModifierGroup < ApplicationRecord
  has_many :item_modifier_groups, dependent: :destroy
  has_many :items, through: :item_modifier_groups
  has_many :modifiers, dependent: :destroy

  validates :identifier, presence: true, uniqueness: true
  validates :label, presence: true
end
