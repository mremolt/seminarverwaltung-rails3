class Seminartermin < ActiveRecord::Base
  has_friendly_id :description, :use_slug => true, :approximate_ascii => true,
    :ascii_approximation_options => :german

  belongs_to :seminar, :counter_cache => :seminartermine_count

  default_scope :include => :seminar

  def description
    "#{seminar.titel} vom #{beginn} bis #{ende} in #{raum}"
  end
end
