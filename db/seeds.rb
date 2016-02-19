# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


orientations = ['straight', 'gay', 'lesbian', 'bi', 'trans', 'queer', 'asexual']
orientations.each do |orientation|
  SexualOrientation.create(name: orientation)
end


genders = ['male', 'female']
genders.each do |gender|
  Gender.create(name: gender)
end
