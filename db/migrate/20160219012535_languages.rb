class Languages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name, null: false
    end
  end
end
