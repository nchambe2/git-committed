require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "should save a valid user" do
    user = User.new(first_name: "Cheeky", last_name: "Miller", password: "password", username: "cheeky", email: "cheeky@gmail.com", zip_code: "60314", birthday: "10/10/1998" )
    assert(user.valid?)
  end

  test "should not save without first name" do
    user = User.new(last_name: "Walker", password: "password", username: "walke", email: "walker@gmail.com", zip_code: "60314", birthday: "10/10/2000" )
    assert_not user.valid?
    assert_equal [:first_name], user.errors.keys
  end

  test "should not save without last name" do
     user = User.new(first_name: "Walsh", password: "password", username: "walsh", email: "walsh@gmail.com", zip_code: "60314", birthday: "10/10/1999" )
    assert_not user.valid?
    assert_equal [:last_name], user.errors.keys
  end

   test "should not save without email" do
     user = User.new(first_name: "Flash", last_name: "Dance", password: "password", username: "walsh", zip_code: "60314", birthday: "10/10/1999" )
    assert_not user.valid?
    assert_equal [:email], user.errors.keys
  end

  test "should not save without username" do
     user = User.new(first_name: "Flash", last_name: "Dance", password: "password", zip_code: "60314",email: "fldance@gmail.com", birthday: "10/10/1999" )
    assert_not user.valid?
    assert_equal [:username], user.errors.keys
  end

  test "should not save without birthday" do
     user = User.new(first_name: "Flash", last_name: "Dance", password: "password", zip_code: "60314", username: "looky@gmail.com", email: "cookie@gmail.com")
    assert_not user.valid?
    assert_equal [:birthday], user.errors.keys
  end

  test "should respond to gender" do
    user = User.new
    user.respond_to?(:first_name)
  end

  test "should respond to sexual_orientation" do
    user = User.new
    user.respond_to?(:sexual_orientation)
  end

  test "should respond to sexual preference" do
    user = User.new
    user.respond_to?(:sexual_preference)
  end

  test "should respond to text editors" do
    user = User.new
    user.respond_to?(:text_editors)
  end

  test "should respond to operating system" do
    user = User.new
    user.respond_to?(:oss)
  end

end
