class Daylite::Task < Daylite::Base
  belongs_to :owner, :class_name => 'User', :foreign_key => 'assignedtoid'

  has_many :organizationtaskjoins, :foreign_key => 'taskid'
  has_many :organizations, :through => :organizationtaskjoins

  has_many :contacttaskjoins, :foreign_key => 'taskid'
  has_many :contacts, :through => :contacttaskjoins

  has_many :project_task_joins, :foreign_key => 'taskid'
  has_many :projects, :through => :projecttaskjoins

  # @@status_codes = {
  #   0 => "Open",
  #   4 => "Pending",
  #   5 => "Deferred",
  #   6 => "In Progress",
  #   7 => "Done",
  #   8 => "Cancelled"
  # }

  def organization
    organizations[0]
  end

  def contact
    contacts[0]
  end

  def to_s
    "#<Daylite::Task:#{title}>"
  end
end
