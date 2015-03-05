require 'spec_helper'

describe 'Create a Grapevine App' do

  let(:app_name) { 'FooApp' }

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

    expect(Dir.exist?('foo_app')).to eq(true)
    expect(Dir.entries('foo_app').include?('app')).to eq(true)
  end

  it 'should not create an app if the name exists' do
    Dir.mkdir 'foo_app'
    expect(Structure::Grapevine.new.new(app_name)).to eq(nil)
  end

  context 'Templates declaration' do
    before do
      Structure::Grapevine.new.new(app_name)
      FileUtils.cd destination_root
    end

    it 'should create config.ru correctly' do
      file = File.open('foo_app/config.ru', 'r')
      expect(file.read).to include "#{app_name}::Application"
    end

    it 'should create spec_helper and first spec' do
      expect(File.exists?('foo_app/spec/spec_helper.rb')).to eq(true)
      expect(File.exists?('foo_app/spec/initializers/start_server_spec.rb')).to eq(true)
    end
  end

  context 'db configuration' do
    it 'should create the db if the argument is sent' do
      Structure::Grapevine.start(['new', app_name, '--withdb'])
      FileUtils.cd destination_root
    end
  end
end
