class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.decimal :amount
      t.datetime :date
      t.string :description
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
