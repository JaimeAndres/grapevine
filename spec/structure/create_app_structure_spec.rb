require 'spec_helper'

describe 'Create a Grapevine App' do

  before :each do
    FileUtils.cd destination_root
  end

  after :each do
    FileUtils.cd destination_root
    FileUtils.remove_dir 'foo_app'
  end

  it 'should create the app home directory' do
    Structure::Grapevine.new.new(app_name)
    FileUtils.cd destination_root

    Dir.exist?('foo_app').should == true
    Dir.entries('foo_app').include?('app').should == true
  end

  it 'should not create an app if the name exists' do
    Dir.mkdir 'foo_app'
    Structure::Grapevine.new.new(app_name).should == nil
  end

  context 'Templates declaration' do
    before do
      Structure::Grapevine.new.new(app_name)
      FileUtils.cd destination_root
    end

    it 'should create config.ru correctly' do
      file = File.open('foo_app/config.ru', 'r')
      file.read.should include "#{app_name}::Application"
    end

    it 'should create spec_helper and first spec' do
      File.exists?('foo_app/spec/spec_helper.rb').should == true
      File.exists?('foo_app/spec/initializers/start_server_spec.rb').should == true
    end
  end

  context 'db configuration' do
    it 'should create the db if the argument is sent' do
      Structure::Grapevine.start(['new', app_name, '--withdb'])
      FileUtils.cd destination_root
    end
  end

  private

  def app_name
    'FooApp'
  end
end
