# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :seminartermin do |f|
  f.beginn "2010-07-20"
  f.ende "2010-07-20"
  f.raum "MyString"
  f.association :seminar
end
