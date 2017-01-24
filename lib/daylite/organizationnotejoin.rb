class Daylite::Organizationnotejoin < Daylite::Base
  belongs_to :organization, :class_name => "Organization", :foreign_key => "organizationid"
  belongs_to :note, :class_name => "Note", :foreign_key => "noteid"
end
