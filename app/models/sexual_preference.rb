class SexualPreference < ActiveRecord::Base
  has_many :users
  belongs_to :filterable, polymorphic: true
  validates :name, presence: true

  def self.sexual_preference_names
      self.pluck("name")
  end
end
