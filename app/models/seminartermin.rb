class Seminartermin < ActiveRecord::Base
  has_friendly_id :description, :use_slug => true, :approximate_ascii => true,
    :ascii_approximation_options => :german

  belongs_to :seminar, :counter_cache => :seminartermine_count
  has_many :teilnahmen
  has_many :teilnehmer, :through => :teilnahmen, :source => :benutzer, :class_name => "Benutzer"

  default_scope :include => [:seminar, :teilnehmer]

  def description
    "#{seminar.titel} vom #{beginn} bis #{ende} in #{raum}"
  end

  def to_s
    description
  end
end
