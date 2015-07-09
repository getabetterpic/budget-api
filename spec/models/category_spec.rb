require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should have_many :transactions }
  it { should validate_presence_of :name }
  it { should have_many :budget_entries }
end
