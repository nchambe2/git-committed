class UserSkill < ActiveRecord::Base
  belongs_to :User_Skill
  belongs_to :user
end
