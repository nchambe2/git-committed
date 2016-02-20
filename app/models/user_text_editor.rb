class UserTextEditor < ActiveRecord::Base
  belongs_to :text_editor
  belongs_to :user
end
