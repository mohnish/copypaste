require 'rails_helper'

RSpec.describe EntriesController do
  before do
    request.env["HTTP_ACCEPT"] = 'application/json'
  end

  describe 'GET /entries/id' do
    let(:entry) { create(:entry) }

    it 'returns the entry' do
      get :show, { id: entry.id }
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST /entries' do

  end

  describe 'PATCH /entries/id' do

  end

  describe 'DELETE /entries/id' do

  end
end
