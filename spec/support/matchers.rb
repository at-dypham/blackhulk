Dir[Rails.root.join("spec/matchers/**/*.rb")].each { |f| require f }

RSpec.configure do |config|
  # TODO: Will update later
  # config.include Matchers
end
