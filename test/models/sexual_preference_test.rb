require 'test_helper'

class SexualPreferenceTest < ActiveSupport::TestCase

  test "should save with name" do
    sexual_preference = SexualPreference.new(name:"men")
    assert(sexual_preference.valid?)
  end

  test "should not save without name" do
    sexual_preference = SexualPreference.new
    assert_not sexual_preference.valid?
    assert_equal [:name], sexual_preference.errors.keys
  end

  test "should respond to filters" do
    sexual_preference = SexualPreference.new
    sexual_preference.respond_to?(:filters)
  end
end
