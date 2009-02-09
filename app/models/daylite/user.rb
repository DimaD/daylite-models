class Daylite::User < Daylite::Base
  belongs_to :contact, :foreign_key => "contactID"

  has_many :organizations, :foreign_key => "assignedToID"
  has_many :tasks, :class_name => "Task", :foreign_key => "assignedToID"

  def name
    contact.cachedName
  end
end
