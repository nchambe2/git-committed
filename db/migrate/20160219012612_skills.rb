class Skills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name, null: false

      t.timestamps(null: false)
    end
  end
end
