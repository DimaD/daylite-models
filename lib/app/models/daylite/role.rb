class Daylite::Role < Daylite::Base
  belongs_to :organization, :foreign_key => "organizationid"
  belongs_to :project, :foreign_key => "projectid"

  belongs_to :role_type, :foreign_key => "roletypeid"

  def type
    role_type.name
  end
end
