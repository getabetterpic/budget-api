require 'rails_helper'

RSpec.describe Budget, type: :model do
  it { should have_many :transactions }
  it { should have_many :budget_entries }

  describe '#current_month_entries' do
    before :each do
      @budget = FactoryGirl.create(:budget)
      @entry1 = FactoryGirl.create(:budget_entry, date: DateTime.now, budget: @budget)
      @entry2 = FactoryGirl.create(:budget_entry, date: DateTime.now - 2.months, budget: @budget)
      @entry3 = FactoryGirl.create(:budget_entry, date: DateTime.now + 2.months, budget: @budget)
    end

    it 'only includes the current month\'s entries' do
      ap @budget.budget_entries
      expect(@budget.current_month_entries.count).to eq(1)
      expect(@budget.current_month_entries).to include @entry1
      expect(@budget.current_month_entries).not_to include @entry2
      expect(@budget.current_month_entries).not_to include @entry3
    end
  end
end
