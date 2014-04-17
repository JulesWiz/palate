require 'spec_helper'

describe UsersController do

  render_views

  describe 'GET index' do
    it 'returns list of users' do
      get :index, :format => :json
      expect(response.status).to eq 200
      expect(response.body).to include 'test@example.com'
      expect(JSON.load(response.body)["users"][1]["email"]).to eq 'test@example.com'
    end
  end
end