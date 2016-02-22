class Skill < ActiveRecord::Base
  has_many :user_skills
  has_many :filters,  as: :filterable
  
  validates :name, presence: true

  def self.skill_names
      self.pluck("name")
  end
end
