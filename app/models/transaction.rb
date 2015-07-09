class Transaction < ActiveRecord::Base
  belongs_to :category
  belongs_to :budget
  validates_presence_of :amount
  validates_numericality_of :amount
end
