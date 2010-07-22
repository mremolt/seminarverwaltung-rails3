class Benutzer < ActiveRecord::Base
  has_many :teilnahmen

  searchable_on :vorname, :name, :email

  validates_presence_of :vorname, :name, :anrede

  def to_s
    "#{anrede} #{vorname} #{name}"
  end
end
