class Seminar < ActiveRecord::Base
  has_many :seminartermine

  validates_presence_of :titel, :preis
  validates_numericality_of :preis

  def to_s
    "Seminar '#{titel}'"
  end
end
