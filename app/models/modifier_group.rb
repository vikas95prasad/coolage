class ModifierGroup < ApplicationRecord
  belongs_to :item
  has_many :modifiers, dependent: :destroy
end
