require 'test_helper'

feature "Registration" do
  scenario "create account" do
    visit new_account_path
    fill_in('First name',                       :with => 'Matt')
    fill_in('Last name',                        :with => 'Baker')
    fill_in('Email',                            :with => 'mbaker@today.com')
    fill_in('Username',                         :with => 'mbeez')
    fill_in('Password',                         :with => 'password')
    fill_in('user_password_confirmation',       :with => 'password')
    select('1997',                              :from => 'user_birthday_1i')
    select('March',                             :from => 'user_birthday_2i')
    select('2',                                 :from => 'user_birthday_3i')
    select('male',                              :from => 'Gender')
    select('straight',                          :from => 'Sexual orientation')
    select('women',                             :from => 'Sexual preference')
    fill_in('Zip code',                         :with => '12345')
    click_button('submit')
    page.must_have_css('#profile-show')
  end
end

feature "Login and Visit Profile"  do
  scenario "login and view your profile page" do
    tommy = users :tommy
    gigi  = users :gigi
    profile = Profile.create(user: tommy)
    profile.github_link = "https://github.com/fjksljf"
    Profile.create(user: gigi)
    visit login_path
    fill_in('Username', :with => 'tmoore')
    fill_in('Password', :with => 'password')
    click_button('submit')
    page.must_have_css('#profile-browse')
  end
end

# feature "Edit Profile"  do
#   scenario "edit your profile page" do
    # casey = User.create!(first_name: "Casey",
    #                     last_name: "Cumbow",
    #                     username: "case-eee",
    #                     password: "password",
    #                     email: "caseeee@gmail.com",
    #                     zip_code: "60640",
    #                     birthday: " 06/06/1988",
    #                     gender_id: Gender.find_by(name: "female").id,
    #                     sexual_orientation_id: SexualOrientation.find_by(name: "straight").id,
    #                     # sexual_preference_id: SexualPreference.find_by(name: "female-seeking-male").id)
    #                     sexual_preference_id: SexualPreference.find_by(name: "male").id)
    # Profile.create(user: casey)
#     visit edit_profile_path
#     fill_in('Username', :with => 'case-eee')
#     fill_in('Password', :with => 'password')
#     click_button('submit')
#   end
# end
