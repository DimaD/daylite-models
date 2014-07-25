class Daylite::Project < Daylite::Base
  belongs_to :owner, :class_name => "User", :foreign_key => "assignedtoid"

  has_many :roles, :foreign_key => "projectid"
  has_many :projects, :through => :roles

  has_many :projecttaskjoins, :foreign_key => "projectid"
  has_many :tasks, :through => :projecttaskjoins

  def status_codes
    @@status_codes ||= {
      0 => "In Progress",
      1 => "Deffered",
      2 => "Canceled",
      3 => "Abandoned",
      4 => "New",
      7 => "Done",
    }
  end

  def status_string
    status_codes[attributes["statusCode"]] || "Unknown status"
  end
end
