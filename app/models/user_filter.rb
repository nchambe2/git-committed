class UserFilter < ActiveRecord::Base
  belongs_to :user_filter
  belongs_to :user
end
