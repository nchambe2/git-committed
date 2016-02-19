class Filters < ActiveRecord::Migration
  def change
    create_table :filters do |t|
      t.integer :filterable_id, null: false
      t.string :filterable_type, null: false
    end
  end
end
