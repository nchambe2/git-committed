class Language <ActiveRecord::Base
  has_many :user_languages
  validates :name,     presence: true
  has_many :filters,   as: :filterable
end
