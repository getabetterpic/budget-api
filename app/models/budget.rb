class Budget < ActiveRecord::Base
  belongs_to :user
  has_many :transactions
  has_many :budget_entries

  def current_month_entries
    budget_entries.select do |e|
      e.current_month?
    end
  end
end
