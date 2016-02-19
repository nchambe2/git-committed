class SexualOrientations < ActiveRecord::Migration
  def change
    create_table :sexual_orientations do |t|
      t.string :name
    end
  end
end
