class Category < ActiveRecord::Base
  has_ancestry
  has_many :transactions
  has_many :budget_entries
  validates_presence_of :name
end
