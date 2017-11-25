class Daylite::Role < Daylite::Base
  belongs_to :organization, :foreign_key => "organizationid"
  belongs_to :contact, :foreign_key => "contactid"
  belongs_to :project, :foreign_key => "projectid"
  belongs_to :roletype, :foreign_key => "roletypeid"

  def type
    roletype.name
  end
end
