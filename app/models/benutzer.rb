class Benutzer < ActiveRecord::Base
  has_many :teilnahmen

  def to_s
    "#{anrede} #{vorname} #{name}"
  end
end
