class AddIndexesToTables < ActiveRecord::Migration[7.1]
  def change
    add_index :items, :type
  end
end
