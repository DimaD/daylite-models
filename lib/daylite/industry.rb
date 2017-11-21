class Daylite::Industry < Daylite::Base

  has_many :organizations, foreign_key: "organizationid"

end

