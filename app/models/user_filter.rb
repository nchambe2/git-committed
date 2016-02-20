class UserFilter < ActiveRecord::Base
  belongs_to :filter
  belongs_to :user
end