class Daylite::Contact < Daylite::Base
  has_one :user, :foreign_key => "contactid"

  has_many :contacttaskjoins, :foreign_key => "contactid"
  has_many :tasks, :through => :contacttaskjoins

end
