class Skill < ActiveRecord::Base
  has_many :user_skills
  validates :name, presence: true
end
