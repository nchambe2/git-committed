class User < ActiveRecord::Base
  has_secure_password
  has_one :profile
  belongs_to :gender
  belongs_to :sexual_orientation
  belongs_to :sexual_preference

  has_many :user_seekings
  has_many :relationship_types, through: :user_seekings

  has_many :user_filters
  has_many :filters, through: :user_filters

  has_many :user_text_editors
  has_many :text_editors, through: :user_text_editors
  has_many :user_skills
  has_many :skills, through: :user_skills
  has_many :user_operating_systems
  has_many :operating_systems, through: :user_operating_systems
  has_many :user_languages
  has_many :languages, through: :user_languages


  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true, allow_nil: true, length: {minimum: 8, maximum: 25}
  validates :username, presence: true, uniqueness: true
  validates :zip_code, presence: true
  validates :birthday, presence: true
  validates :email, presence: true, uniqueness: true

  validates_format_of :email, with: /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  def age
    (Date.today - birthday).to_i / 365
  end

  def get_likees
    Like.where(liker_id: id).map(&:liked)
  end

  def get_likers
    Like.where(liked_id: id).map(&:liker)
  end

  def pull_request_exists?(user)
    get_likees.include?(user)
  end

end
