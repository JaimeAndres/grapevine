require 'spec_helper'

describe 'Create a Grapevine App' do

  before :each do
    FileUtils.cd destination_root
  end

  after :each do
    FileUtils.remove_dir 'foo_app'
  end

  it 'should create the app home directory' do
    Structure::Grapevine.new.new('foo_app')
    FileUtils.cd destination_root

    Dir.exist?('foo_app').should == true
    Dir.entries('foo_app').include?('app').should == true
  end

  it 'should not create an app if the name exists' do
    Dir.mkdir 'foo_app'
    Structure::Grapevine.new.new('foo_app').should == nil
  end
end
