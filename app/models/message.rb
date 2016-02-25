class Message < ActiveRecord::Base
  belongs_to :conversation
  belongs_to :user

  validates_presence_of :conversation_id, :user_id
  validates :body, presence: true, length: { minimum: 1 }

  def message_time
    created_at.nil? ? "Now" : created_at.strftime("%m/%d/%y at %l:%M %p")
  end
end
