class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name

      t.timestamps :created_at
    end
  end
end
