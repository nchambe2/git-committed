class SexualOrientations < ActiveRecord::Migration
  def change
    create_table :sexual_orientations do |t|
      t.string :name, null: false
    end
  end
end
