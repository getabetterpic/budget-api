require 'rails_helper'

RSpec.describe "BudgetEntries", type: :request do
  describe "GET /budget_entries" do
    it "works! (now write some real specs)" do
      get budget_entries_path
      expect(response).to have_http_status(200)
    end
  end
end
