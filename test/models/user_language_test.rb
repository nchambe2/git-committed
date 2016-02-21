require 'test_helper'

class UserLanguageTest < ActiveSupport::TestCase
  test "should respond to language" do
    user_language = UserLanguage.new
    assert_respond_to(user_language, :language)
  end

  test "should respond to user" do
    user_language = UserLanguage.new
    assert_respond_to(user_language, :user)
  end

end