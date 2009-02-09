class Daylite::Contact < Daylite::Base
  has_one :user, :foreign_key => "contactID"
end
