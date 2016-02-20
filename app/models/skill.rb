class Skill < ActiveRecord::Base
  has_many :user_skills
  belongs_to :filterable, polymorphic: true
  validates :name, presence: true
end
