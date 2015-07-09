class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :ancestry

      t.timestamps null: false
      t.index :ancestry
    end
  end
end
