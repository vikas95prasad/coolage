class Section < ApplicationRecord
  has_many :section_items
  has_many :items, through: :section_items
  has_many :menu_sections
  has_many :menus, through: :menu_sections

  validates :identifier, presence: true, uniqueness: true
  validates :label, presence: true
  validates :description, presence: true
end
