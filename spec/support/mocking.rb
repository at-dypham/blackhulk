
RSpec.configure do |config|
  config.before(:each) do
    stub_request(:get, "https://api.github.com/repos/#{ENV['github_user_name']}/#{ENV['github_repo']}/issues?access_token=#{ENV['personal_access_token']}").
      to_rack(FakeGitHub)
  end
end
