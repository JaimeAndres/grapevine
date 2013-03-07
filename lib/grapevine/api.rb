module Grapevine
  class API < Grape::API

    # It will call grape#helpers method for each helper module included
    # @param format [Array] Helpers Modules to be included in the app
    def self.mount_helpers(app_helpers=[])
      app_helpers.each do |helper|
        helpers helper
      end
    end  

    # It will call grape#mount method for each route to include
    # @param format [Array] Routes Class to be included in the main app
    def self.mount_routes(app_routes=[])
      app_routes.each do |route|
        mount route
      end
    end
  end
end
