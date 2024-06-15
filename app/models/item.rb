class Item < ApplicationRecord
  belongs_to :section
  has_many :modifier_groups, dependent: :destroy
end
