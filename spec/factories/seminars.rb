# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :seminar do |f|
  f.sequence(:titel) {|n| "Titel #{n}" }
  f.sequence(:beschreibung) {|n| "Beschreibung #{n}" }
  f.sequence(:preis) { 1.5 * rand(100) }
  f.kategorie "Programmierung"
end
