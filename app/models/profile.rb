class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :questions, through: :answers
  has_one :document

  paginates_per 15

  def get_traits
    [user.languages, user.text_editors, user.skills, user.operating_systems].flatten
  end
end
