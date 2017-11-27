class Daylite::Noteprojectjoin < Daylite::Base
  belongs_to :note, :class_name => 'Note', :foreign_key => 'noteid'
  belongs_to :project, :class_name => 'Project', :foreign_key => 'projectid'
end
