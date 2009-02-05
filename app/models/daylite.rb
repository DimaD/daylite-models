module Daylite
end

class Daylite::Base < ActiveRecord::Base
  self.abstract_class = true
end