class UserSeeking < ActiveRecord::Base
  belongs_to :relationship_type
  belongs_to :user
end
