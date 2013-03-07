require 'spec_helper'

describe 'Create Templates files' do
  before :each do
    FileUtils.cd destination_root
    Structure::Grapevine.new.new('FooApp')
    FileUtils.cd destination_root + '/foo_app'
  end

  after :each do
    FileUtils.cd destination_root
    FileUtils.remove_dir 'foo_app'
  end

  it 'should add a new routes version file' do
    Structure::Grapevine.new.add_api_version

    File.exists?('app/information/v1/routes.rb').should == true

    file = File.open('app/information/v1/routes.rb', 'r')
    file.readline.should include "module FooApp"
  end
end
