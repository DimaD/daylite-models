class Daylite::Task < Daylite::Base
  belongs_to :owner, :class_name => "User", :foreign_key => "assignedToID"

  has_many :organization_task_joins, :foreign_key => "taskID"
  has_many :organizations, :through => :organization_task_joins

  def organization
    organizations[0]
  end

  def to_s
    "#<Daylite::Task:#{title}>"
  end
end
