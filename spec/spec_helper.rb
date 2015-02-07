if RUBY_VERSION == "1.9.3"
  require 'debugger'
elsif RUBY_VERSION >= "2.0.0"
  require 'byebug'
end

require 'grapevine'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.filter_run :focus
  config.run_all_when_everything_filtered = true
  config.order = :random

  def destination_root
    File.join(File.dirname(__FILE__), 'sandbox')
  end
end
