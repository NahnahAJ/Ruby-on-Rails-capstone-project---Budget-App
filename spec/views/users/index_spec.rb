require 'rails_helper'

RSpec.describe UsersController, type: :system do
  before(:each) do
    @user_one = User.create(name: 'user_one')
    @user_two = User.create(name: 'user_two')
  end

  it 'shows all users' do
    visit users_path
    expect(page).to have_content('Sign Up')
    expect(page).to have_content('Log In')
  end
end
