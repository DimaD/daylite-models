class Daylite::Contacttaskjoin < Daylite::Base
  belongs_to :contact, :class_name => 'Contact', :foreign_key => 'contactid'
  belongs_to :task, :class_name => 'Task', :foreign_key => 'taskid'
end
