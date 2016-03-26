class Daylite::User < Daylite::Base
  belongs_to :contact, :foreign_key => "contactid"

  has_many :organizations, :foreign_key => "assignedtoid"
  has_many :tasks, :class_name => "Task", :foreign_key => "assignedtoid"

  def name
    contact.cachedName
  end
end
