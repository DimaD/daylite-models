class Daylite::User < Daylite::Base
  set_table_name "User"

  has_many :organizations, :foreign_key => "assignedToID"
  has_many :tasks, :class_name => "Task", :foreign_key => "assignedToID"
end
