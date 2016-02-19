class SexualOrientation < ActiveRecord::Base
  has_many :users
  validation :name, presence: true
end
