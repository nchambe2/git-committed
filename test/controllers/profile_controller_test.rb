require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase

  setup do
    @user = User.new(first_name: "Ray", last_name: "Johnson", password_digest: 'y34yiuerwhfsdkbkhjo2r3p', username: 'crusty', email: 'ray@johnson.org', zip_code: '90210', birthday: '1969-06-06')
  end

  test "should get index" do
    get :index
    assert_response :redirect
  end

  test "should show list of profiles" do
    @controller.session[:user_id] = @user.id
    get :index
    assert_response :redirect
    assert_not_nil(:profiles)
  end

end


# , gender: 'male', sexual_orientation: 'straight', sexual_preference: 'male-seeking-female', text_editor: "Sublime", operating_system: "Windows"
