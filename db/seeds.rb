# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


genders = ['male', 'female']
genders.each do |gender|
 Gender.create!(name: gender)
end

orientations = ['straight', 'gay', 'lesbian', 'bi', 'trans', 'queer', 'asexual']
orientations.each do |orientation|
 SexualOrientation.create!(name: orientation)
end

preferences = ['male', 'female','either', 'both']
preferences.each do |preference|
 SexualPreference.create!(name: preference)
end

text_editors = ['Sublime Text', 'Atom', 'Vim', 'Emacs', 'Notepad++', 'BBEdit', 'UltraEdit', 'Dreamweaver', 'Coda', 'Brackets','TextMate']
text_editors.each do |editor|
 TextEditor.create!(name: editor)
end

# operating_systems = ['Microsoft Windows', 'Apple Mac OS X', 'Linux', 'Unix']
# operating_systems.each do |system|
#  OS.create!(name: system)
# end


matt = User.create!(first_name: "Matt",
                   last_name: "Baker",
                   username: "mrbakertoyou",
                   password: "password",
                   email: "matt@matt.com",
                   zip_code: "60607",
                   birthday: " 08/08/1987",
                   gender_id: Gender.find_by(name: "male").id,
                   sexual_orientation_id: SexualOrientation.find_by(name: "straight").id,
                   sexual_preference_id: SexualPreference.find_by(name: "straight").id)


casey = User.create!(first_name: "Casey",
                    last_name: "Cumbow",
                    username: "case-eee",
                    password: "password",
                    email: "caseeee@gmail.com",
                    zip_code: "60640",
                    birthday: " 06/06/1988",
                    gender_id: Gender.find_by(name: "female").id,
                    sexual_orientation_id: SexualOrientation.find_by(name: "straight").id,
                    sexual_preference_id: SexualPreference.find_by(name: "straight").id)
