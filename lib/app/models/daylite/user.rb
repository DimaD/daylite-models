class Daylite::User < Daylite::Base
  # Changed with Daylite 4
  self.table_name = "dluser"

  belongs_to :contact, :foreign_key => "contactid"

  has_many :contacts, foreign_key: "createdbyid"
  has_many :organizations, foreign_key: "createdbyid"
#  has_many :organizations, :foreign_key => "assignedtoid"
  has_many :tasks, :class_name => "Task", :foreign_key => "assignedtoid"

  scope :active, -> { where( active: 1)}

  def name
    contact.cachedname
  end
end
