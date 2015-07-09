class BudgetEntry < ActiveRecord::Base
  belongs_to :category
  belongs_to :budget

  SHORT_MONTHS = {
    "Jan" => "#{Date.today.year}-01",
    "Feb" => "#{Date.today.year}-02",
    "Mar" => "#{Date.today.year}-03",
    "Apr" => "#{Date.today.year}-04",
    "May" => "#{Date.today.year}-05",
    "Jun" => "#{Date.today.year}-06",
    "Jul" => "#{Date.today.year}-07",
    "Aug" => "#{Date.today.year}-08",
    "Sep" => "#{Date.today.year}-09",
    "Oct" => "#{Date.today.year}-10",
    "Nov" => "#{Date.today.year}-11",
    "Dec" => "#{Date.today.year}-12",
  }

  def current_month?
    (Date.today.beginning_of_month..Date.today.end_of_month).include? date.to_date
  end

  def month
    date.strftime('%Y-%m')
  end

  def month=(month)
    self.date = DateTime.parse("#{month}-#{Date.today.day}")
  end
end
