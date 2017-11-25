class Daylite::LargeData < Daylite::Base
  self.table_name = 'largedata'

  has_one :note, foreign_key: 'largedataid'
  has_one :organization, foreign_key: 'detailsid'

  def to_s
    "#<Daylite::LargeData:#{plaintext}>"
  end
end
