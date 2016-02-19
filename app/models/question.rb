class Question < ActiveRecord::Base
  has_one :answer
  validates :title, presence: true
end
