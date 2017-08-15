class Daylite::Contact < Daylite::Base
  belongs_to :category, foreign_key: "categoryid"
  
  has_one :user, foreign_key: "contactid"

  has_many :contacttaskjoins, foreign_key: "contactid"
  has_many :tasks, through: :contacttaskjoins
  has_many :notes, through: :contactnotejoins
  has_many :roles, foreign_key: "contactid"
  has_many :roletypes, through: :roles
  has_many :organizations, through: :roles

  has_many :phones, foreign_key: "contactid"
  has_many :electronic_addresses, foreign_key: "contactid"
  has_many :geoaddresses, foreign_key: "contactid"

  scope :alive, -> { self.where( deletiondate: nil)}
  scope :dead, -> { self.where.not( deletiondate: nil)}
end

