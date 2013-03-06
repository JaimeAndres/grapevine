require 'active_support/core_ext/string/inflections'

module Structure
  class GrapevineSkeleton < Thor::Group
    include Thor::Actions

    def self.source_root
      File.dirname(__FILE__)
    end

    argument :app_name
    def create_app
      exist_directory!
      directory 'grapevine_structure', app_directory
    end

    def return_to_initial_path
      FileUtils.cd '..'
      p "You can start developing #{app_directory} service ;)"
    end

    private

    def app_directory
      app_name.underscore
    end

    def exist_directory!
      raise Thor::Error, "Directory #{app_directory} exist" if File.directory?app_directory
    end
  end
end

