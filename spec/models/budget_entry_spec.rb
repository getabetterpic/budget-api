require 'rails_helper'

RSpec.describe BudgetEntry, type: :model do
  it { should belong_to :budget }
  it { should belong_to :category }
end
