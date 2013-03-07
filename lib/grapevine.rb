require "grapevine/version"
autoload :Structure, 'grapevine/structure/grapevine'

require 'json'
require 'grape'

module Grapevine
  autoload :MountRoutes, 'grapevine/application/mount_routes'

  autoload :API, 'grapevine/api'
  autoload :Application, 'grapevine/application/application'
  autoload :Routes, 'grapevine/application/routes'
end
