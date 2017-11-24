class Daylite::Note < Daylite::Base
  belongs_to :owner, class_name: "User", foreign_key: "assignedtoid"
  belongs_to :large_data, foreign_key: "largedataid"

  has_many :organizationnotejoins, foreign_key: "noteid"
  has_many :organizations, through: :organizationnotejoins

  has_many :contactnotejoins, foreign_key: "noteid"
  has_many :contacts, through: :contactnotejoins

  has_many :project_note_joins, foreign_key: "noteid"
  has_many :projects, through: :projectnotejoins

  def organization
    organizations[0]
  end

  def contact
    contacts[0]
  end

  def to_s
    "#<Daylite::Note:#{title}>"
  end
end
