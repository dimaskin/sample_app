require 'capybara'
require 'capybara/dsl'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups
  
  #config.fixture_path = "#{::Rails.root}/spec/fixtures"
  #config.use_transactional_fixtures = true
  #config.infer_base_class_for_anonymous_controllers = false
  #config.order = "random" 
  config.include Capybara::DSL

end