class Daylite::Contact < Daylite::Base
  has_one :user, :foreign_key => "contactid"

  has_many :contacttaskjoins, :foreign_key => "contactid"
  has_many :tasks, :through => :contacttaskjoins
  has_many :roles, :foreign_key => "contactid"
  has_many :roletypes, through: :roles
  has_many :organizations, through: :roles
end
