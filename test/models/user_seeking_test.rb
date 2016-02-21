require 'test_helper'

class UserSeekingTest < ActiveSupport::TestCase
  test "should respond to user" do
    user_seeking = UserSeeking.new
    assert_respond_to(user_seeking, :user)
  end

  test "should respond to operating system" do
    user_seeking = UserSeeking.new
    assert_respond_to(user_seeking, :relationship_type)
  end

end