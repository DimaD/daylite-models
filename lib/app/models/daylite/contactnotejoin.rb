class Daylite::Contactnotejoin < Daylite::Base
  belongs_to :contact, :class_name => "Contact", :foreign_key => "contactid"
  belongs_to :note, :class_name => "Note", :foreign_key => "noteid"
end
