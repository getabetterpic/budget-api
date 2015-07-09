require 'rails_helper'

RSpec.describe BudgetEntry, type: :model do
  it { should belong_to :budget }
  it { should belong_to :category }

  describe '#current_month?' do
    before :each do
      @entry = FactoryGirl.create(:budget_entry)
    end
    it 'returns true if budget_entry date is within the current month' do
      @entry.date = DateTime.now
      expect(@entry.current_month?).to eq(true)
    end
    it 'returns false if budget_entry date is not within the current month' do
      @entry.date = DateTime.now - 2.months
      expect(@entry.current_month?).to eq(false)
    end
  end
end
