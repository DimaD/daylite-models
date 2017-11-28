class Daylite::Projecttaskjoin < Daylite::Base
  belongs_to :project, :foreign_key => 'projectid'
  belongs_to :task, :foreign_key => 'taskid'
end
