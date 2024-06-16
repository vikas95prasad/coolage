class MenuSection < ApplicationRecord
  belongs_to :menu
  belongs_to :section

  validates :menu_id, presence: true
  validates :section_id, presence: true
  validates :display_order, presence: true, numericality: { only_integer: true }
end
