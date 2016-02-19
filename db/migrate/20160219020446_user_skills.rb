class UserSkills < ActiveRecord::Migration
  def change
    create_table :user_skills do |t|
      t.references :skill
      t.references :user

      t.timestamps(null: false)
    end
  end
end
