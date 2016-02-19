class TextEditor < ActiveRecord::Base
  belongs_to :user
  validates :name, null: false
end
