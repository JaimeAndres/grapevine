require 'rubygems'

if RUBY_VERSION == "1.9.3"
  require 'debugger'
elsif RUBY_VERSION >= "2.0.0"
  require 'byebug'
end

require 'rack'

require File.expand_path('../../lib/grapevine', __FILE__)

RSpec.configure do |config|

  def destination_root
    File.join(File.dirname(__FILE__), 'sandbox')
  end
end
