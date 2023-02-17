require 'rails_helper'

RSpec.describe TransaractsController, type: :request do
  describe 'transaracts index' do
    before(:each) do
      get group_transaracts_path(1)
    end

    it 'returns a 200 status code' do
      expect(response).to have_http_status(200)
    end

    it 'returns a list of transaracts' do
      expect(response.body).to include('Add Transaract')
    end

    it 'render index action' do
      expect(response).to render_template(:index)
    end
  end
end
