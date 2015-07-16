class CategoryResource < JSONAPI::Resource
  attributes :name, :ancestry, :parent_id
  has_many :budget_entries
end
