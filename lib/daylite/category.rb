class Daylite::Category < Daylite::Base

  has_many :contacts, foreign_key: "categoryid"
  has_many :organizations, foreign_key: "categoryid"
end

