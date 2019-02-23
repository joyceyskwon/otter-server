class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :bank
      t.integer :account_number
      t.decimal :monthly_income

      t.timestamps
    end
  end
end
