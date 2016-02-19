class Answers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :rating

      t.references :profile
      t.references :question

      t.timestamps(null: false)

    end
  end
end
