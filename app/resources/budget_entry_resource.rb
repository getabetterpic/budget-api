class BudgetEntryResource < JSONAPI::Resource
  attributes :amount, :date

  has_one :category
end
