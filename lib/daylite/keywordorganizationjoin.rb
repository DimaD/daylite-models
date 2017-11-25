class Daylite::Keywordorganizationjoin < Daylite::Base
  belongs_to :organization, class_name: "Organization", foreign_key: "organizationid"
  belongs_to :keyword, class_name: "Keyword", foreign_key: "keywordid"
end
