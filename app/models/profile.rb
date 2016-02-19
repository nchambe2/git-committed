class Profile < ActiveRecord::Base
  has_one :user
  has_many :answers
  has_many :questions, through: :answers
end
