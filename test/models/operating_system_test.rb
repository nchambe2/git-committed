require 'test_helper'

class OperatingSystemTest < ActiveSupport::TestCase
  test "should save with name" do
    operating_system = OperatingSystem.new(name: "Linux")
    assert(operating_system.valid?)
  end

  test "should not save without name" do
    operating_system = OperatingSystem.new
    assert_not operating_system.valid?
  end

  test "should respond to users" do
    operating_system = OperatingSystem.new
    assert_respond_to(operating_system, :users)
  end
   test "should respond to user operating systems" do
    operating_system = OperatingSystem.new
    assert_respond_to(operating_system, :user_operating_systems)
  end
end