require 'test_helper'

class GenderTest < ActiveSupport::TestCase
  test "should save with name" do
    gender = Gender.new(name: "male")
    assert(gender.valid?)
  end

  test "should not save without name" do
    gender = Gender.new
    assert_not gender.valid?
  end

  test "should respond to users" do
    gender = Gender.new
    assert_respond_to(gender, :users)
  end
end