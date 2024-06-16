class Modifier < ApplicationRecord
  belongs_to :item
  belongs_to :modifier_group

  validates :item_id, presence: true
  validates :modifier_group_id, presence: true
  validates :display_order, presence: true, numericality: { only_integer: true }
  validates :default_quantity, presence: true, numericality: { only_integer: true }
  validates :price_override, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true

  validate :item_must_be_component

  private

  def item_must_be_component
    errors.add(:item, 'must be a Component') unless item.type == 'Component'
  end
end
