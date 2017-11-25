class Daylite::Base < ActiveRecord::Base
  self.abstract_class = true
  self.pluralize_table_names = false

  self.primary_key = '_rowid'
  table_name do
    self.name.sub('Daylite::', '')
  end

  # don't allow to save Daylite::Base objects to DB
  def readonly?
    #    false
    true
  end

  def method_missing(symbol, *args)
    guess_attribute = symbol.to_s.camelize(:lower).sub('Id', 'ID')
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

  # scopes for all objects
  scope :alive, -> { self.where(deletiondate: nil) }
  scope :dead, -> { self.where.not(deletiondate: nil) }

  # test for whether record has been deleted or not
  def alive?
    self.deletiondate.nil?
  end

  def dead?
    !self.deletiondate.nil?
  end
end
