class Budget < ActiveRecord::Base
  belongs_to :user
  has_many :transactions
  has_many :budget_entries
end
