class TransaractsController < ApplicationController
  def index
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
