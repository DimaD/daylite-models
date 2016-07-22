class Daylite::Roletype < Daylite::Base
  belongs_to :role

  scope :alive, -> { self.where( deletiondate: nil)}
  scope :dead, -> { self.where.not( deletiondate: nil)}

end
