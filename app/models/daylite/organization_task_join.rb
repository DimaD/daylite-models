class Daylite::OrganizationTaskJoin < Daylite::Base
  belongs_to :organization, :class_name => "Organization", :foreign_key => "organizationID"
  belongs_to :task, :class_name => "Task", :foreign_key => "taskID"
end
