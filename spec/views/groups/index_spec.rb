require 'rails_helper'

RSpec.describe 'Groups index view', type: :system do
  before(:each) do
    @user_one = User.create(name: 'user_one')

    @group_one = Group.create(name: 'group_one', icon: 'icon_one')
    @group_two = Group.create(name: 'group_two', icon: 'icon_two')

    @transaract_one = Transaract.create(name: 'transaract_one', amount: 100)
    @transaract_two = Transaract.create(name: 'transaract_two', amount: 200)
  end

  it 'shows all groups' do
    visit groups_path
    expect(page).to have_content('Add new category')
  end

  it 'shows all transaracts' do
    visit group_transaracts_path(1)
    expect(page).to have_content('Add Transaract')
  end
end
