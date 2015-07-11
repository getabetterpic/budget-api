require "rails_helper"

RSpec.describe BudgetEntriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/budget_entries").to route_to("budget_entries#index")
    end

    it "routes to #new" do
      expect(:get => "/budget_entries/new").to route_to("budget_entries#new")
    end

    it "routes to #show" do
      expect(:get => "/budget_entries/1").to route_to("budget_entries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/budget_entries/1/edit").to route_to("budget_entries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/budget_entries").to route_to("budget_entries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/budget_entries/1").to route_to("budget_entries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/budget_entries/1").to route_to("budget_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/budget_entries/1").to route_to("budget_entries#destroy", :id => "1")
    end

  end
end
