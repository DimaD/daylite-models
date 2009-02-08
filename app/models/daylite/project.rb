class Daylite::Project < Daylite::Base
  #status_codes = { 1 => "", 2 => "", 3 => "", 4 => ""}
  belongs_to :owner, :class_name => "User", :foreign_key => "assignedToID"

  has_many :roles, :foreign_key => "projectID"
  has_many :projects, :through => :roles

  has_many :project_task_joins, :foreign_key => "projectID"
  has_many :tasks, :through => :project_task_joins
end
