class AddAvailabilityToSections < ActiveRecord::Migration[7.1]
  def change
    add_column :sections, :availability, :bool, default: true
  end
end
