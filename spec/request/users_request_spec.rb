require 'rails_helper'

RSpec.describe UsersController, type: :request do
  describe 'users index' do
    before(:each) do
      get '/users'
    end

    it 'returns a 200 status code' do
      expect(response).to have_http_status(200)
    end

    it 'returns login and sign_in links' do
      expect(response.body).to include('Sign Up')
      expect(response.body).to include('Log In')
    end
  end
end
