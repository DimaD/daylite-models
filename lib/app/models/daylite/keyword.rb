class Daylite::Keyword < Daylite::Base

  has_many :keywordorganizationjoins, :foreign_key => "keywordid"
  has_many :organizations, :through => :keywordorganizationjoins

  scope :alive, -> { self.where( deletiondate: nil)}
  scope :dead, -> { self.where.not( deletiondate: nil)}

end
