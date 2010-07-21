class Seminartermin < ActiveRecord::Base
  belongs_to :seminar

  default_scope :include => :seminar
end
