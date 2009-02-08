class Daylite::ProjectTaskJoin < Daylite::Base
  belongs_to :project, :foreign_key => "projectID"
  belongs_to :task, :foreign_key => "taskID"
end
