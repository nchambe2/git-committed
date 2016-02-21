require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase

  setup do
    @user = User.new(first_name: "Ray", last_name: "Johnson", password_digest: 'y34yiuerwhfsdkbkhjo2r3p', username: 'crusty', email: 'ray@johnson.org', zip_code: '90210', birsthday: '1969-06-06')
  end

  test "should get index" do
    get :index
    assert_response :redirect
  end


end
