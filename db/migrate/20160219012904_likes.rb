class Likes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :liker
      t.references :liked
      t.boolean :pulled
      t.timestamps(null: false)
    end
  end
end
