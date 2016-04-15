class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :uid, :limit => 8
      t.datetime :issue_date
      t.datetime :expiry_date
      t.integer :balance

      t.timestamps
    end
  end
end
