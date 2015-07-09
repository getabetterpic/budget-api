class User < ActiveRecord::Base
  has_secure_password
  has_one :budget
  has_many :transactions, through: :budget
  validates_uniqueness_of :email, case_sensitive: false
  validates_presence_of :email

  after_create :create_budget

  def create_budget
    Budget.create(user: self)
  end
end
