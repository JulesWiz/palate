require 'spec_helper'

describe UsersController do

  render_views

  before :all do
    User.create(email: 'test@example.com', password: '123', password_confirmation: '123')
  end

  describe 'GET index' do
    it 'returns list of users' do
      get :index, :format => :json
      expect(response.status).to eq 200
      expect(response.body).to include 'test@example.com'
      expect(JSON.load(response.body)["users"][0]["email"]).to eq 'test@example.com'
    end
  end

  describe 'GET show' do
    it 'returns one user' do
      get :show, :id => 1, :format => :json
      expect(response.status).to eq 200
      expect(response.body).to include 'test@example.com'
      expect(JSON.load(response.body)["email"]).to eq 'test@example.com'
    end
  end
end