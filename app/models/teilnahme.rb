class Teilnahme < ActiveRecord::Base
  belongs_to :seminartermin
  belongs_to :benutzer

  delegate :seminar, :beginn, :ende, :raum, :to => :seminartermin
end
