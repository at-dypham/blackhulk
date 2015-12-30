require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response.status).to eq 200
    end

    context 'configurations is not available' do
      before do
        stub_request(:get, "https://api.github.com/repos/#{ENV['github_user_name']}/#{ENV['github_repo']}/issues?access_token=#{ENV['personal_access_token']}").
          with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Ruby'}).
          to_return(:status => 400, :body => "", :headers => {})
      end

      it 'returns http not_found' do
        get :index
        expect(response.status).to eq 400
        expect(JSON.parse(response.body)['message']).to eq 'Please check your config'
      end
    end
  end
end
