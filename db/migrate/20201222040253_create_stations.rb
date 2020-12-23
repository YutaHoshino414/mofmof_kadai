class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :railway
      t.integer :walk_minute

      t.timestamps
    end
  end
end
