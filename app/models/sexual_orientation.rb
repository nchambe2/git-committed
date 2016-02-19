class SexualOrientation < ActiveRecord::Base
  belongs_to :user
  validation :name, presence: true
end
