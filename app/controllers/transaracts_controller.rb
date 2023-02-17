# For a given category, the list of transactions is presented, ordered by the most recent.
# At the top of the page the user could see the total amount for the category (sum of all of the amounts of the transactions in that category).
# There is a button "add a new transaction" at the bottom that brings the user to the page to create a new transaction.
# When the user clicks on the "Back" button (<), the user navigates to the home page.
class TransaractsController < ApplicationController
  def index
    # @transaracts = Transaract.includes(:transaract_groups).where(id: params[:group_id]).order(created_at: :desc)
    @groups = Group.find_by(id: params[:group_id])
    @transaracts = TransaractGroup.includes(:transaract).where(group: @groups).order(created_at: :desc)
    @total_transactions = @transaracts.map { |transaction| transaction.transaract.amount }.sum
  end

  def new
    @new_transaract = Transaract.new
    @groups = Group.where(author: current_user)
  end

  def create
    @create_transaract = Transaract.create(name: params[:name], amount: params[:amount], author: current_user)
    if @create_transaract
      @new_transaract_group = TransaractGroup.create(transaract_id: @create_transaract.id, group_id: params[:group_id])
      redirect_to groups_path
    else
      render :new
    end
  end
end

