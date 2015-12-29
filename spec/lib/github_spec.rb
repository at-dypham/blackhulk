require 'rails_helper'

describe GitHub do
  context '.issues' do
    before do
      gh = GitHub.new
      @issues = gh.issues
    end

    it 'returns list issues' do
      expect(@issues).to be_an_instance_of(Array)
    end
  end
end
