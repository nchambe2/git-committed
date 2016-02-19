class UserSeekings < ActiveRecord::Migration
  def change
    create_table :user_seekings do |t|
      t.references :relationship_type
      t.references :user

      t.timestamps(null: false)
    end
  end
end
