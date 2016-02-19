class Profiles < ActiveRecord::Migration
  def change
    create_table :profile do |t|
      t.string :picture
      t.string :about_me

      t.references :answer
      t.references :profile

      t.timestamps(null: false)
    end
  end
end
