$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')
$LOAD_PATH << File.join(File.dirname(__FILE__))

require 'rspec'
require 'rspec/something'
require 'rspec/matchers/fail_matchers'

RSpec::Matchers.define :raise_mock_expectation_error do |expected_message|
  match do |block|
    begin
      block.call
      false
    rescue RSpec::Mocks::MockExpectationError => e
      expect(e.message).to match expected_message
      RSpec::Mocks.teardown
      true
    end
  end

  failure_message do |block|
    "expected block to raise RSpec::Mocks::MockExpectationError with message matching #{expected_message}"
  end

  supports_block_expectations
end

RSpec.configure do |config|
  config.include RSpec::Matchers::FailMatchers

  config.order = "random"
end
