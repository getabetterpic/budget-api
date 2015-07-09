class BudgetEntry < ActiveRecord::Base
  belongs_to :category
  belongs_to :budget

  def current_month?
    (Date.today.beginning_of_month..Date.today.end_of_month).include? date.to_date
  end
end
