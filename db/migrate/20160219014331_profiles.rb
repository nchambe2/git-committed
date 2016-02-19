class Profiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :picture
      t.text :about_me
      t.references :user, null: false

      t.timestamps(null: false)
    end
  end
end
