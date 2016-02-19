class User < ActiveRecord::Base
  has_secure_password

  has_one :gender_identity
  has_one :sexual_orientation
  has_many :sexual_preferences
  has_many :text_editors
  has_many :oss

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true, allow_nil: true, length: {minimum: 8}
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :zip_code, presence: true
  validates :birthdate, presence: true
end
