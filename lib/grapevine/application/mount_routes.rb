module Grapevine
  module MountRoutes
    # Search trough all possible "version" folders (with number, e.g. v1)
    # an generate the method call to grape mount method with that route
    #
    # @note the class must have namespaces defined as:
    #   module FooBar
    #     module V1
    #       class Routes
    #       end
    #     end
    #   end
    #
    #   You must note the 'module V1' and the name of the class must be 'Routes'
    def self.mount_routes
      if Dir.exists?(File.dirname(__FILE__) + '/../app')
        Dir.chdir(File.dirname(__FILE__) + '/../app/information')

        Dir.entries('.').each do |version|
          if version =~ /v\d/
            mount "MontevibusAPI::#{version.upcase}::Routes".constantize
          end
        end
      end
    end

  end
end
