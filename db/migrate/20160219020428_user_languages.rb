class UserLanguages < ActiveRecord::Migration
  def change
    create_table :user_languages do |t|
      t.references :language
      t.references :user

      t.timestamps(null: false)
    end
  end
end
