class SexualPreferences < ActiveRecord::Migration
  def change
    create_table :sexual_preferences do |t|
      t.string :name, null: false

      t.timestamps(null: false)
    end
  end
end
