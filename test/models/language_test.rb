require 'test_helper'

class LanguageTest < ActiveSupport::TestCase

  test "should save with name" do
    language = Language.new(name:"Ruby")
    assert(language.valid?)
  end

  test "should not save without name" do
    language = Language.new
    assert_not language.valid?
    assert_equal [:name], language.errors.keys
  end

  test "should respond to filters" do
    language = Language.new
    assert_respond_to(language, :filters)
  end
end