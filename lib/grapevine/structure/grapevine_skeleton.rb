require 'active_support/core_ext/string/inflections'

module Structure
  class GrapevineSkeleton < Thor::Group
    include Thor::Actions

    def self.source_root
      File.dirname(__FILE__)
    end

    argument :app_name, type: :string
    argument :withdb, type: :string
    argument :dbms, type: :string
    def create_app
      exist_directory!
      create_directory('grapevine_structure', app_directory)
    end

    def create_spec_helper
      create_template('spec_helper.rb', 'spec/spec_helper.rb')
    end

    def create_db_structure
      unless withdb.empty?
        create_template('env.sample', '.env.sample')

        create_directory("#{templates_directory}/db", "#{app_directory}/db")

        create_db_structure_for(withdb)
      end
    end

    def return_to_initial_path
      p "You can start developing #{app_directory} service ;)"
      p "Don't forget to configure your .env file"
    end

    private

    def app_directory
      app_name.underscore
    end

    def exist_directory!
      raise Thor::Error, "Directory #{app_directory} exist" if File.directory?app_directory
    end

    def templates_directory
      "#{File.dirname(__FILE__)}/templates"
    end

    def templates_source(template_file)
       "#{templates_directory}/#{template_file}.tt"
    end

    def create_template(source, target, conditions={})
      template(templates_source(source), "#{app_directory}/#{target}", { verbose: false }.merge(conditions))
    end

    def create_directory(source, target)
      directory(source, target, { verbose: false })
    end

    def destination(version)
      "#{information_path}/#{version}/routes.rb"
    end

    def create_db_structure_for(orm)
      create_template("#{orm.titleize}Rakefile", 'Rakefile', { force: true })
      create_template("#{orm}_db_config.rb", 'config/initializers/db_config.rb')
    end
  end
end

