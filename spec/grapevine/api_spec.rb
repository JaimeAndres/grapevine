require 'spec_helper'

describe Grapevine::Application do

  module Test
  end

  subject { Class.new(Grapevine::Application) }

  def app; subject end

  it 'should require grape, json' do
    !!defined?(JSON).should == true
    !!defined?(GRAPE).should == true
  end

  it 'should include helpers' do
    subject.mount_helpers([Test]).include?(Test).should == true
  end
end
