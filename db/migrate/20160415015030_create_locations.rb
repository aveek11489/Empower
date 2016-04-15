class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :vendor_id
      t.string :location

      t.timestamps
    end
  end
end
