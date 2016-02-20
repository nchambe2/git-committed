require 'test_helper'

class LanguageTest < ActiveSupport::TestCase
  test "should save with name" do
    language = Language.new(name:"Ruby")
    assert(language.valid?)
  end
end