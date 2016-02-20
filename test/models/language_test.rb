require 'test_helper'

class LanguageTest < ActiveSupport::TestCase

  test "should save with name" do
    language = Language.new(name:"Ruby")
    assert(language.valid?)
  end

  test "should not save without name" do
    language = Language.new
    assert_not language.valid?
  end

  test "should respond to filters" do
    language = Language.new
    language.respond_to?(:filters)
  end
end