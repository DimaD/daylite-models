class Daylite::Project < Daylite::Base
  belongs_to :owner, :class_name => "User", :foreign_key => "assignedToID"
end