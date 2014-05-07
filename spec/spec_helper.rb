require 'rubygems'
require 'byebug'

require 'rack'

require File.expand_path('../../lib/grapevine', __FILE__)

RSpec.configure do |config|

  def destination_root
    File.join(File.dirname(__FILE__), 'sandbox')
  end
end
