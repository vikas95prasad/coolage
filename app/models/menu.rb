class Menu < ApplicationRecord
  has_many :sections, dependent: :destroy
end
