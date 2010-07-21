class Seminar < ActiveRecord::Base
  has_friendly_id :titel, :use_slug => true, :approximate_ascii => true,
    :ascii_approximation_options => :german

  has_many :seminartermine

  default_scope :include => :seminartermine 

  validates_presence_of :titel, :preis
  validates_numericality_of :preis

  def to_s
    "Seminar '#{titel}'"
  end
end
