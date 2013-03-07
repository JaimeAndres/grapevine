require 'roar/representer/json'
require 'roar/representer/feature/hypermedia'

module Grapevine
  module Representer
    include Roar::Representer::JSON
    include Roar::Representer::Feature::Hypermedia
  end
end
