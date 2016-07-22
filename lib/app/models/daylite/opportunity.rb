class Daylite::Opportunity < Daylite::Base
  has_many :roles, :foreign_key => "opportunityid"
end
