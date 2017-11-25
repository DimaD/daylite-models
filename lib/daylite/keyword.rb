class Daylite::Keyword < Daylite::Base

  has_many :keywordorganizationjoins, :foreign_key => "keywordid"
  has_many :organizations, :through => :keywordorganizationjoins

end
