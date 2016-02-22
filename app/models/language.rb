class Language <ActiveRecord::Base
  has_many :user_languages
  has_many :filters,  as: :filterable
  
  validates :name,    presence: true

  def self.language_names
      self.pluck("name")
  end

end
