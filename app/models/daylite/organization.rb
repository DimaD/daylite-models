class Daylite::Organization < Daylite::Base
  set_primary_key "_rowid"
  set_table_name "Organization"

  has_many :organization_task_joins, :foreign_key => "organizationID"
  has_many :tasks, :through => :organization_task_joins
end
