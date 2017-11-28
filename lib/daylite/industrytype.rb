class Daylite::Industrytype < Daylite::Base
  has_many :organizations, foreign_key: 'industrytypeid'
end
