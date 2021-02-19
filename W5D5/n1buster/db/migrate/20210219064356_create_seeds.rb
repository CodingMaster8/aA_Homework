class CreateSeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :seeds do |t|
      t.integer :count
      t.integer :plant_id

      t.timestamps
    end
    add_index :seeds, :plant_id
  end
end
