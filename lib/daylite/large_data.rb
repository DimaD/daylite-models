class Daylite::LargeData < Daylite::Base

  self.table_name = "largedata"
  
  has_one :note, foreign_key: "largedataid"
  belongs_to :organization, foreign_key: "detailsid"
  
  scope :alive, -> { self.where( deletiondate: nil)}
  scope :dead, -> { self.where.not( deletiondate: nil)}

  def to_s
    "#<Daylite::LargeData:#{plaintext}>"
  end
end
