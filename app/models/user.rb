class User < ActiveRecord::Base
  has_secure_password
  has_one :profile
  belongs_to :gender
  belongs_to :sexual_orientation
  belongs_to :sexual_preference
  has_many :user_text_editors
  has_many :text_editors, through: :user_text_editors
  has_many :user_operating_systems
  has_many :operating_systems, through: :user_operating_systems


  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true, allow_nil: true, length: {minimum: 8, maximum: 25}
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :zip_code, presence: true
  validates :birthday, presence: true

  # def calculate_age(birthday)
  def age
    (Date.today - birthday).to_i / 365
  end
end
