# app/models/menu_section.rb
class MenuSection < ApplicationRecord
  belongs_to :menu
  belongs_to :section

  validates :menu_id, presence: true
  validates :section_id, presence: true
end
