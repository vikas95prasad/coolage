class Section < ApplicationRecord
  belongs_to :menu
  has_many :items, dependent: :destroy
end
