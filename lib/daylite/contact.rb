class Daylite::Contact < Daylite::Base
  belongs_to :category, foreign_key: "categoryid"
  belongs_to :owner, class_name: "User", foreign_key: "assignedtoid"

  belongs_to :details, class_name: "LargeData", foreign_key: "detailsid"

  has_one :user, foreign_key: "contactid"

  has_many :contacttaskjoins, foreign_key: "contactid"
  has_many :tasks, through: :contacttaskjoins

  has_many :contactnotejoins, foreign_key: "contactid"
  has_many :notes, through: :contactnotejoins

  has_many :roles, foreign_key: "contactid"
  has_many :roletypes, through: :roles

  has_many :organizations, through: :roles

  has_many :keywordcontactjoins, foreign_key: "contactid"
  has_many :keywords, through: :keywordcontactjoins

  has_many :phones, foreign_key: "contactid"
  has_many :electronic_addresses, foreign_key: "contactid"
  has_many :geoaddresses, foreign_key: "contactid"

end

