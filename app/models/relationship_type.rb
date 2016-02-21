class RelationshipType < ActiveRecord::Base
  has_many :user_seekings
  validates :name, presence: true

  def self.relationship_type_names
      self.pluck("name")
  end
end
