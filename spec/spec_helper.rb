$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')
$LOAD_PATH << File.join(File.dirname(__FILE__))

require 'rspec'
require 'rspec/autorun'
require 'rspec/something'

RSpec.configure do |config|
  config.order = "random"
end
