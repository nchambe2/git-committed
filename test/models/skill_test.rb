require 'test_helper'

class SkillTest < ActiveSupport::TestCase
  test "should save with name" do
    skill = Skill.new(name: "Agile Master")
    assert(skill.valid?)
  end

  test "should not save without name" do
    skill = Skill.new
    assert_not skill.valid?
    assert_equal [:name], skill.errors.keys
  end

  test "should respond to filters" do
    skill = Skill.new
    skill.respond_to?(:filters)
  end
end