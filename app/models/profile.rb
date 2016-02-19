class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :questions, through: :answers
end
