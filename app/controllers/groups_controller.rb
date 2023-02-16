# Home Page Categories Page
# When the user logs in, they are presented with the categories page.
# For each category, the user can see their name, icon and the total amount of all the transactions that belongs to that category.
# When the user clicks (or taps) on a category item, the application navigates to the transactions page for that category.
# There is a button "add a new category" at the bottom that brings the user to the page to create a new category.
class GroupsController < ApplicationController
  def index
    @categories = Group.includes(:transaract_groups, :transaracts)
    @transaracts = Transaract.all
    @total_price = @transaracts.map { |all_prices| all_prices[:amount] }.sum
  end

  def new
    @new_category = Group.new
  end

  def create
    @create_category = Group.create(create_category_params)
    if @create_category.save
      redirect_to groups_path
    else
      render :new
    end
  end

  private

  def create_category_params
    params.permit(:name, :icon, :author_id)
  end
end
