class User_Language < ActiveRecord::Base
  belongs_to :user_language
  belongs_to :user
end
