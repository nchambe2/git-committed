class Profile < ActiveRecord::Base

  belongs_to :user
  has_many :answers
  has_many :questions, through: :answers
  has_attached_file :picture, styles: {
    thumb: '100x100>',
    square: '200x200',
    medium: '300x300>'
  }

  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  paginates_per 15

  def get_traits
    [user.languages, user.text_editors, user.skills, user.operating_systems].flatten
  end

end
