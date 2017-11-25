class Daylite::Base < ActiveRecord::Base
  self.abstract_class = true
  self.pluralize_table_names = false

  self.primary_key = '_rowid'
  table_name do
    name.sub('Daylite::', '')
  end

  # don't allow to save Daylite::Base objects to DB
  def readonly?
    #    false
    true
  end

  def method_missing(symbol, *args)
    guess_attribute = symbol.to_s.camelize(:lower).sub('Id', 'ID')

    if (result = attributes[guess_attribute])
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
  scope :alive, -> { where(deletiondate: nil) }
  scope :dead, -> { where.not(deletiondate: nil) }

  # test for whether record has been deleted or not
  def alive?
    deletiondate.nil?
  end

  def dead?
    !deletiondate.nil?
  end
end
