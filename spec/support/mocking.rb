
RSpec.configure do |config|
  config.before(:each) do
    #stub_request(:get, "https://api.github.com/repos/#{ENV['github_user_name']}/#{ENV['github_repo']}/issues?access_token=#{ENV['personal_access_token']}").
    #  with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Ruby'}).
    #  to_return(:status => 200, :body => "", :headers => {})
    stub_request(:get, "https://api.github.com/repos/#{ENV['github_user_name']}/#{ENV['github_repo']}/issues?access_token=#{ENV['personal_access_token']}").
      to_rack(FakeGitHub)
  end
end
