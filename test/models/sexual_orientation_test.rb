require 'test_helper'

class SexualOrientationTest < ActiveSupport::TestCase
  test "should save with name" do
    sexual_orientation = SexualOrientation.new(name: "male")
    assert(sexual_orientation.valid?)
  end

  test "should not save without name" do
    sexual_orientation = SexualOrientation.new
    assert_not sexual_orientation.valid?
  end

  test "should respond to users" do
    sexual_orientation = SexualOrientation.new
    assert_respond_to(sexual_orientation, :users)
  end
end