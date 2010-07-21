# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :benutzer do |f|
  f.anrede "Herr"
  f.vorname "Vorname"
  f.name "Nachname"
  f.email "test@example.com"
end
