class OperatingSystem < ActiveRecord::Base
  has_many :user_operating_systems
  has_many :users, through: :user_operating_systems
  validates :name, presence: true
end
