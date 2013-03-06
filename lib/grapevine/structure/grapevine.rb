require 'thor'
require File.expand_path(File.dirname(__FILE__) + '/grapevine_skeleton.rb')

module Structure
  class Grapevine < Thor

    desc "new <AppName>", "create a new app"
    def new(app_name)
      Structure::GrapevineSkeleton.start([app_name])
    end
  end
end
