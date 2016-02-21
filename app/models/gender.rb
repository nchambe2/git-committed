class Gender < ActiveRecord::Base
  has_many :users
  validates :name, presence: true

  def self.gender_names
    self.pluck("name")
  end
end
