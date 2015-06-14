require "environment"
require "factory_girl"
require "database_cleaner"
require_relative "./factories.rb"

RSpec.configure do |config|

  # Use Factory Girl on test ernvironment
  config.include FactoryGirl::Syntax::Methods

  # Setup Database cleaner on test
  config.before(:suite) do
    begin
      DatabaseCleaner.start
    ensure
      DatabaseCleaner.clean
    end
  end
  
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # rspec-mocks config goes here. You can use an alternate test double
  # library (such as bogus or mocha) by changing the `mock_with` option here.
  config.mock_with :rspec do |mocks|
    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended, and will default to
    # `true` in RSpec 4.
    mocks.verify_partial_doubles = true
  end

  # executes after each test case
  config.after(:example) do |example|
    # puts "test has finished"
    # puts example.inspect
  end

  # executes before everything else
  config.before(:suite) do
    puts "Start whole new suite of tests"
  end

end
