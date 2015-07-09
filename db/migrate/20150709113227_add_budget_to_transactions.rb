class AddBudgetToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :budget_id, :integer, null: false
    add_index :transactions, :budget_id
  end
end
