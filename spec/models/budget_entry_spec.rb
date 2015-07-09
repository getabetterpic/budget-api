require 'rails_helper'

RSpec.describe BudgetEntry, type: :model do
  it { should belong_to :budget }
  it { should belong_to :category }

  context 'month methods' do
    before :each do
      @entry = FactoryGirl.create(:budget_entry)
    end
    
    describe '#current_month?' do
      it 'returns true if budget_entry date is within the current month' do
        @entry.date = DateTime.now
        expect(@entry.current_month?).to eq(true)
      end
      it 'returns false if budget_entry date is not within the current month' do
        @entry.date = DateTime.now - 2.months
        expect(@entry.current_month?).to eq(false)
      end
    end

    describe '#month' do
      it 'returns the entry\'s month in yyyy-dd format' do
        expect(@entry.month).to eq(DateTime.now.strftime('%Y-%m'))
      end
    end

    describe '#month=' do
      it 'correctly sets the budget entry\'s date' do
        @entry.month = '2015-06'
        expect(@entry.date).to eq(DateTime.parse("2015-06-#{Date.today.day}"))
      end
    end
  end
end
