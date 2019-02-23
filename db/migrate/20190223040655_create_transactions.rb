class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :name
      t.date :date
      t.decimal :amount
      t.string :location

      t.timestamps
    end
  end
end
