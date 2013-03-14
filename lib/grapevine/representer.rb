require 'roar/representer/json'
require 'roar/representer/feature/hypermedia'

# Include this module as Grapevine::Representer to include all roar methods without worrying
# to require roar lib and include the corresponding modules
module Grapevine
  module Representer
    include Roar::Representer::JSON
    include Roar::Representer::Feature::Hypermedia
  end
end
