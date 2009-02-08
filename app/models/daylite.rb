module Daylite
end

class Daylite::Base < ActiveRecord::Base
  self.abstract_class = true
  self.pluralize_table_names = false

  set_primary_key "_rowid"
  set_table_name do
    self.name.sub("Daylite::", "")
  end

  def method_missing(symbol, *args)
    guess_attribute = symbol.to_s.camelize(:lower).sub("Id", "ID")
    if result = attributes[guess_attribute]
      self.class.class_eval do
        define_method symbol do
          return attributes[guess_attribute]
        end
      end
      result
    else
      super
    end
  end
end
