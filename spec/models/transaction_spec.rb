require 'rails_helper'

RSpec.describe Transaction, type: :model do
  it { should belong_to :category }
  it { should belong_to :budget }
  it { should validate_presence_of :amount }
  it { should validate_numericality_of :amount }
end
