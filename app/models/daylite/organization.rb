class Daylite::Organization < Daylite::Base
  belongs_to :owner, :class_name => "User", :foreign_key => "assignedToID"

  has_many :organization_task_joins, :foreign_key => "organizationID"
  has_many :tasks, :through => :organization_task_joins

  has_many :roles, :foreign_key => "organizationID"
  has_many :projects, :through => :roles

  def projects_tasks
    projects.collect { |p| p.tasks }.flatten
  end

  def all_tasks
    projects_tasks + tasks
  end
end
