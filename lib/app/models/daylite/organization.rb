class Daylite::Organization < Daylite::Base
  belongs_to :owner, class_name: "User", foreign_key: "assignedtoid"

  has_many :organizationtaskjoins, foreign_key: "organizationid"
  has_many :tasks, through: :organizationtaskjoins

  has_many :roles, foreign_key: "organizationid"
  has_many :roletypes, through: :roles
  has_many :projects, through: :roles
  has_many :contacts, through: :roles

  def projects_tasks
    projects.collect { |p| p.tasks }.flatten
  end

  def all_tasks
    projects_tasks + tasks
  end
end
