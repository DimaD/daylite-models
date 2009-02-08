class Daylite::Role < Daylite::Base
  belongs_to :organization, :foreign_key => "organizationID"
  belongs_to :project, :foreign_key => "projectID"

  belongs_to :role_type, :foreign_key => "roleTypeID"

  def type
    role_type.name
  end
end
