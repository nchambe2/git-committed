class OperatingSystem < ActiveRecord::Base
  has_many :user_operating_systems
  has_many :users, through: :user_operating_systems
  has_many :filters,  as: :filterable
  
  validates :name, presence: true

  def self.system_names
    self.pluck("name")
  end
end
