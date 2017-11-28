class Daylite::ElectronicAddress < Daylite::Base
  self.table_name = 'electronicaddress'

  belongs_to :contact, foreign_key: 'contactid'
  belongs_to :organization, foreign_key: 'organizationid'

  belongs_to :label, foreign_key: 'labelid'
end
