class BudgetEntry < ActiveRecord::Base
  belongs_to :category
  belongs_to :budget
end
