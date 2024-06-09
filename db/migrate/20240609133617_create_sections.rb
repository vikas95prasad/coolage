class CreateSections < ActiveRecord::Migration[7.1]
  def change
    create_table :sections do |t|
      t.string :identifier
      t.string :label
      t.text :description

      t.timestamps
    end
  end
end
