module Grapevine
  class API < Grape::API
    # It will call grape#helpers method for each helper module included
    # @param format [Array] Helpers Modules to be included in the app
    def self.mount_helpers(app_helpers=[])
      app_helpers.each do |helper|
        helpers helper
      end
    end
    
    default_format :json
    default_error_formatter :json

    mount_routes
  end
end
