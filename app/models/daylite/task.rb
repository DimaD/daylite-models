class Daylite::Task < Daylite::Base
  set_table_name "Task"

  has_many :organization_task_joins, :foreign_key => "taskID"
  has_many :organizations, :through => :organization_task_joins
end
