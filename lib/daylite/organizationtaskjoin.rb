class Daylite::Organizationtaskjoin < Daylite::Base
  belongs_to :organization, :class_name => "Organization", :foreign_key => "organizationid"
  belongs_to :task, :class_name => "Task", :foreign_key => "taskid"
end
