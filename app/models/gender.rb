class Gender < ActiveRecord::Base
  has_many :users
  validates :name, presence: true
  has_many :filters,  as: :filterable

  def self.gender_names
    self.pluck("name")
  end
end
