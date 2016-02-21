class SexualOrientation < ActiveRecord::Base
  has_many :users
  validates :name, presence: true

  def self.orientation_names
    self.pluck("name")
  end
end
