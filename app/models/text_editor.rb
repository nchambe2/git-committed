class TextEditor < ActiveRecord::Base
  has_many :user_text_editors
  has_many :users, through: :user_text_editors
  validates :name, presence: true

  def self.editor_names
    self.pluck("name")
  end
end
