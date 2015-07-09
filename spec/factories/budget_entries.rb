FactoryGirl.define do
  factory :budget_entry do
    amount 100.00
    date { DateTime.now }
    category
    budget
  end
end
