class Daylite::User < Daylite::Base
  has_many :organizations, :foreign_key => "assignedToID"
  has_many :tasks, :class_name => "Task", :foreign_key => "assignedToID"
end
