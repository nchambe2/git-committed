class Relationship_Type < ActiveRecord::Base
  has_many :user_seekings
  validates :type, presence: true
end
