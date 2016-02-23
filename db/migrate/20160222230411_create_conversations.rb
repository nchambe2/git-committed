class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :sender_id, null: false
      t.integer :recipient_id, null: false
      t.timestamps(null: false)
    end
  end
end
