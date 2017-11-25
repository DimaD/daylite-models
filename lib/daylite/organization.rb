class Daylite::Organization < Daylite::Base
  belongs_to :owner, class_name: 'User', foreign_key: 'assignedtoid'
  belongs_to :category, foreign_key: 'categoryid'
  belongs_to :industrytype, foreign_key: 'industrytypeid'
  belongs_to :details, class_name: 'LargeData', foreign_key: 'detailsid'

  has_many :organizationtaskjoins, foreign_key: 'organizationid'
  has_many :tasks, through: :organizationtaskjoins

  has_many :organizationnotejoins, foreign_key: 'organizationid'
  has_many :notes, through: :organizationnotejoins

  has_many :keywordorganizationjoins, foreign_key: 'organizationid'
  has_many :keywords, through: :keywordorganizationjoins

  has_many :roles, foreign_key: 'organizationid'
  has_many :roletypes, through: :roles
  has_many :projects, through: :roles
  has_many :contacts, through: :roles

  has_many :phones, foreign_key: 'organizationid'
  has_many :electronic_addresses, foreign_key: 'organizationid'
  has_many :geoaddresses, foreign_key: 'organizationid'

  def projects_tasks
    projects.collect(&:tasks).flatten
  end

  def all_tasks
    projects_tasks + tasks
  end
end
