class Language <ActiveRecord::Base
  has_many :user_languages
  validates :name,    presence: true
  has_many :filters,  as: :filterable

  def self.language_names
      self.pluck("name")
  end
end
