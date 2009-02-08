class Daylite::Organization < Daylite::Base
  belongs_to :owner, :class_name => "User", :foreign_key => "assignedToID"

  has_many :organization_task_joins, :foreign_key => "organizationID"
  has_many :tasks, :through => :organization_task_joins
end
