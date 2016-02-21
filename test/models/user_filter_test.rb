require 'test_helper'

class UserFilterTest < ActiveSupport::TestCase
  test "should respond to filter " do
    user_filter = UserFilter.new
    assert_respond_to(user_filter, :filter)
  end

  test "should respond to user" do
    user_filter = UserFilter.new
    assert_respond_to(user_filter, :user)
  end

end