class SexualPreferences < ActiveRecord::Migration
  def change
    create_table :sexual_preferences do |t|
      t.string :name
    end
  end
end
