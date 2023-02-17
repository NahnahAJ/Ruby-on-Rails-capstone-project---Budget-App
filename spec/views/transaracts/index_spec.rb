require 'rails_helper'

RSpec.describe TransaractsController, type: :system do
  describe 'transaract index view' do
    before(:each) do
      @user_one = User.create(name: 'user_one')
      
      @group_one = Group.create(name: 'group_one', icon: 'icon_one')
      @group_two = Group.create(name: 'group_two', icon: 'icon_two')

      @transaract_one = Transaract.create(name: 'transaract_one', amount: 100)
      @transaract_two = Transaract.create(name: 'transaract_two', amount: 200)


      visit group_transaracts_path(1)
    end

    it 'shows all transaracts' do
      expect(page).to have_content('Add Transaract')
    end

    it 'open a new transaract form' do
      click_on 'Add Transaract'
      expect(page).to have_content('Name')
    end
  end
end