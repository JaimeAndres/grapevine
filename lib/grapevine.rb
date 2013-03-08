require "grapevine/version"
autoload :Structure, 'grapevine/structure/grapevine'

require 'json'
require 'grape'
require 'roar'

module Grapevine
  autoload :API, 'grapevine/api'
  autoload :Representer, 'grapeview/representer'
end
