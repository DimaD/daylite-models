class Daylite::Geoaddress < Daylite::Base

  belongs_to :contact, foreign_key: "contactid"
  belongs_to :organization, foreign_key: "organizationid"

  scope :alive, -> { self.where( deletiondate: nil)}
end

