class SexualPreference < ActiveRecord::Base
  has_many :users
  belongs_to :filterable, polymorphic: true
  validates :name, presence: true
end
