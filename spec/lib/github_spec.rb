require 'rails_helper'

describe GitHub do
  context '.issues' do
    before do
      gh = GitHub.new
      @issues = gh.issues
    end

    it 'returns list issues' do
      expect(@issues).to be_an_instance_of(Array)
      expect(@issues.first['title']).to eq 'Found a bug'
      expect(@issues.first['body']).to eq "I'm having a problem with this."
    end
  end
end
