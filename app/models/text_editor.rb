class TextEditor < ActiveRecord::Base
  has_many :users
  validates :name, null: false
end
