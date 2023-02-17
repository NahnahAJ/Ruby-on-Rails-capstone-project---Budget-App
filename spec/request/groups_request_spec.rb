require "rails_helper"

RSpec.describe GroupsController, type: :request do
  describe 'groups index' do
    before(:each) do
      get '/groups'
    end

    it 'returns a 200 status code' do
      expect(response).to have_http_status(200)
    end

    it 'returns a list of groups' do
      expect(response.body).to include('Add new category')
    end
  end
end