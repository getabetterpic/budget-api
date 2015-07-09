class CreateBudgetEntries < ActiveRecord::Migration
  def change
    create_table :budget_entries do |t|
      t.decimal :amount
      t.references :category, index: true, foreign_key: true
      t.references :budget, index: true, foreign_key: true
      t.datetime :date

      t.timestamps null: false
    end
  end
end
