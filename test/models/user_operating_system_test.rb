require 'test_helper'

class UserOperatingSystemTest < ActiveSupport::TestCase
  test "should respond to user" do
    user_operating_system = UserOperatingSystem.new
    assert_respond_to(user_operating_system, :user)
  end

  test "should respond to operating system" do
    user_operating_system = UserOperatingSystem.new
    assert_respond_to(user_operating_system, :operating_system)
  end

end