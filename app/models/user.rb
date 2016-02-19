class User < ActiveRecord::Base
  has_one :gender_identity
end
