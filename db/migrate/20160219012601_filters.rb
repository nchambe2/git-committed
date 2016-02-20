class Filters < ActiveRecord::Migration
  def change
    create_table :filters do |t|
      t.references :filterable, polymorphic: true, index: true
      t.belongs_to :user
      # t.integer :filterable_id, null: false
      # t.string :filterable_type, null: false

      t.timestamps(null: false)
    end
  end
end
