class CreateReaders < ActiveRecord::Migration
  def change
    create_table :readers do |t|
      t.integer :uid, :limit => 8
      t.integer :location_id
      t.datetime :issue_date 

      t.timestamps
    end
  end
end
