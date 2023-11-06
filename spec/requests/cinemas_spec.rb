require 'rails_helper'

RSpec.describe Cinema, type: :request do

  # list all cinemas
  describe 'GET /index' do
    before(:each) do
      get '/api/v1/cinemas'
    end
    
    it 'should return all cinemas in fixtures' do
      expect(json.size).to eq(3)
      expect(json[2]["name"]).to eq('Movieland')
    end

    it 'should return status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # create cinema
  describe 'POST / create' do
    before(:each) do
      post "/api/v1/cinemas", params: { 
        cinema: { 
          name: "AstroWorld", 
          location: "Asaba" 
          } 
        }
    end
    
    it "should create a new cinema" do
      expect(response).to have_http_status(201)
      expect(json["message"]).to eq("Cinema added successfully")
      expect(json["data"]["location"]).to eq("Asaba")
    end
  end

  # update cinema
  describe "PUT / update" do

    before(:each) do
      put "/api/v1/cinemas/movieland", params: { 
        cinema: { 
          name: "NewLand", 
          location: "NewLocation" 
        } 
      }
    end

    it "should update the requested cinema" do
      expect(json["name"]).to eq('NewLand')
      expect(response).to have_http_status(:ok)
    end
  end
end