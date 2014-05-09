require 'rubygems'
require 'debugger'

require 'rack'

require File.expand_path('../../lib/grapevine', __FILE__)

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :should
  end

  def destination_root
    File.join(File.dirname(__FILE__), 'sandbox')
  end
end
