class Daylite::Keywordcontactjoin < Daylite::Base
  belongs_to :contact, class_name: "Contact", foreign_key: "contactid"
  belongs_to :keyword, class_name: "Keyword", foreign_key: "keywordid"
end
