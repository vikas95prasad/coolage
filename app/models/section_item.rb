class SectionItem < ApplicationRecord
  belongs_to :item
  belongs_to :section

  validates :item_id, presence: true
  validates :section_id, presence: true
  validates :display_order, presence: true, numericality: { only_integer: true }
end
