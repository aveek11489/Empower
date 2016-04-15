class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :transaction_type_id
      t.integer :reader_id
      t.integer :card_id
      t.integer :amount
      t.integer :card_balance
      t.datetime :transaction_time

      t.timestamps
    end
  end
end
