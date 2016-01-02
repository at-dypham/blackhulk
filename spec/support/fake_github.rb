require 'sinatra/base'

class FakeGitHub < Sinatra::Base

  get "/repos/#{ENV['github_user_name']}/#{ENV['github_repo']}/issues" do
    json_response 200, 'issues.json'
  end

  private

  def json_response(status_code, file_name)
    content_type :json
    status status_code
    File.open(File.dirname(__FILE__) + '/fixtures/' + file_name, 'rb').read
  end
end
