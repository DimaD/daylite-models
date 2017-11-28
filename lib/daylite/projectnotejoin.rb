class Daylite::Projectnotejoin < Daylite::Base
  belongs_to :project, :foreign_key => 'projectid'
  belongs_to :note, :foreign_key => 'noteid'
end
