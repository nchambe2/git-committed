# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Language.destroy_all
Gender.destroy_all
Skill.destroy_all
SexualOrientation.destroy_all
SexualPreference.destroy_all
TextEditor.destroy_all
OperatingSystem.destroy_all
User.destroy_all
RelationshipType.destroy_all

programming_languages = ['Ruby', 'Javascript', 'C', 'Java', 'C#', 'C++', 'Scala', 'Haskell', 'Objective-C', 'Python', 'PHP', 'Assembly', 'Coffeescript', 'COBOL', 'Lisp', 'Perl', 'Pascal', 'Swift', 'VBScript']

programming_languages.each do |programming_language|
  lang = Language.create!(name: programming_language)
  lang.filters.create
end

relationships = ['Coding pair', 'Coding bae']

relationships.each do |relationship|
  rt = RelationshipType.create!(name: relationship)
  rt.filters.create
end

skill_sets = ['Manual Testing', 'Agile Methodology', 'Watefall Methodology', 'SQL', 'AWS', 'Build Pipelines', 'Shell Scripting', 'Test Automation', 'User Experience', 'Presenting']

skill_sets.each do |skill_set|
  skill = Skill.create!(name: skill_set)
  skill.filters.create
end

genders = ['male', 'female', 'other']
genders.each do |gender|
 Gender.create!(name: gender)
end

orientations = ['straight', 'gay', 'lesbian', 'bi', 'trans', 'queer', 'asexual']
orientations.each do |orientation|
 SexualOrientation.create!(name: orientation)
end

preferences = ['men', 'women', 'men and women']
preferences.each do |preference|
 SexualPreference.create!(name: preference)
end

text_editors = ['Sublime Text', 'Atom', 'Vim', 'Emacs', 'Notepad++', 'BBEdit', 'UltraEdit', 'Dreamweaver', 'Coda', 'Brackets','TextMate', 'Text Edit', 'Text Wrangler']
text_editors.each do |editor|
 te = TextEditor.create!(name: editor)
 te.filters.create
end

operating_systems = ['Microsoft Windows', 'Apple Mac OS X', 'Linux', 'Unix']
operating_systems.each do |system|
 op_system = OperatingSystem.create!(name: system)
 op_system.filters.create
end


matt = User.create!(first_name: "Matt",
                   last_name: "Baker",
                   username: "mrbakertoyou",
                   password: "password",
                   email: "matt@matt.com",
                   zip_code: "60607",
                   birthday: " 08/08/1987",
                   gender_id: Gender.find_by(name: "male").id,
                   sexual_orientation_id: SexualOrientation.find_by(name: "straight").id,
                   sexual_preference_id: SexualPreference.find_by(name: "women").id)

matt.languages << Language.first
matt.skills << Skill.first
matt.skills << Skill.last
matt.operating_systems << OperatingSystem.find_by(id: 2)
matt.operating_systems << OperatingSystem.find_by(id: 4)
matt.text_editors << TextEditor.find_by(id: 3)
matt.text_editors << TextEditor.find_by(id: 2)



casey = User.create!(first_name: "Casey",
                    last_name: "Cumbow",
                    username: "case-eee",
                    password: "password",
                    email: "caseeee@gmail.com",
                    zip_code: "60640",
                    birthday: " 06/06/1988",
                    gender_id: Gender.find_by(name: "female").id,
                    sexual_orientation_id: SexualOrientation.find_by(name: "straight").id,
                    sexual_preference_id: SexualPreference.find_by(name: "men").id)


Profile.create(user: matt)
Profile.create(user: casey)

Filter.all.each do |filter|
  matt.user_filters.create(filter: filter)
end

Filter.all.each do |filter|
  casey.user_filters.create(filter: filter)
end
