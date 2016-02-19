class Languages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string, null: false
    end
  end
end
