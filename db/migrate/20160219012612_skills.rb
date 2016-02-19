class Skills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name, null: false
    end
  end
end
