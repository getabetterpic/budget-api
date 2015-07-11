class BudgetEntriesController < ApplicationController
  before_action :set_budget_entry, only: [:show, :update, :destroy]

  # GET /budget_entries
  # GET /budget_entries.json
  def index
    @budget_entries = BudgetEntry.all

    render json: @budget_entries
  end

  # GET /budget_entries/1
  # GET /budget_entries/1.json
  def show
    render json: @budget_entry
  end

  # POST /budget_entries
  # POST /budget_entries.json
  def create
    @budget_entry = BudgetEntry.new(budget_entry_params)

    if @budget_entry.save
      render json: @budget_entry, status: :created, location: @budget_entry
    else
      render json: @budget_entry.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /budget_entries/1
  # PATCH/PUT /budget_entries/1.json
  def update
    @budget_entry = BudgetEntry.find(params[:id])

    if @budget_entry.update(budget_entry_params)
      head :no_content
    else
      render json: @budget_entry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /budget_entries/1
  # DELETE /budget_entries/1.json
  def destroy
    @budget_entry.destroy

    head :no_content
  end

  private

    def set_budget_entry
      @budget_entry = BudgetEntry.find(params[:id])
    end

    def budget_entry_params
      params[:budget_entry]
    end
end
