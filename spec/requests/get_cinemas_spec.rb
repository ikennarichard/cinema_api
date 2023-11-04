require 'rails_helper'
RSpec.describe 'Cinemas', type: :request do
  describe 'GET /index' do
    before(:each) do
      get '/api/v1/cinemas'
    end
    
    it 'returns all cinemas in fixtures' do
      expect(json.size).to eq(3)
      expect(json[2]["name"]).to eq('Movieland')
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end