require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_one :budget }
  it { should validate_uniqueness_of(:email).case_insensitive }
  it { should validate_presence_of :email }
end
