module Daylite
end

class Daylite::Base < ActiveRecord::Base
  self.abstract_class = true
  self.pluralize_table_names = false

  set_primary_key "_rowid"
  set_table_name do
    self.name.sub("Daylite::", "")
  end
end
