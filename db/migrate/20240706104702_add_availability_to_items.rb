class AddAvailabilityToItems < ActiveRecord::Migration[7.1]
  def change
    add_column :items, :availability, :bool, default: true
  end
end
