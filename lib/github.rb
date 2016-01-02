class GitHub
  include HTTParty

  base_uri 'https://api.github.com'

  attr_reader :options

  def initialize
    @options = { query: {access_token: ENV['personal_access_token']} }
  end

  def issues
    response = self.class.get("/repos/#{ENV['github_user_name']}/#{ENV['github_repo']}/issues", options)
    return nil unless response.code == 200
    return JSON.parse(response.body)
  end
end
